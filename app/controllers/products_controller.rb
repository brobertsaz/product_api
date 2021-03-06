class ProductsController < ApplicationController
  before_action :set_product, only: %i[show update destroy]

  def index
    @products = Product.all

    render json: @products
  end

  def show
    render json: @product
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def search
    @products = Product.where(:height.gte => params[:height])
                       .where(:length.gte => params[:length])
                       .where(:weight.gte => params[:weight])
                       .where(:width.gte => params[:width])

    render json: @products.order_by(area: :asc).first
  end

  def destroy
    @product.destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])

    render json: '{"error": "Couldn\'t find product"}', status: :not_found if @product.nil?
  end

  def product_params
    params.permit(:name, :type, :length, :height, :width, :weight)
  end
end
