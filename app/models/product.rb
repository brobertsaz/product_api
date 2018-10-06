class Product
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :length, type: Integer
  field :width, type: Integer
  field :height, type: Integer
  field :weight, type: Integer
  field :area , type: Float

  validates_presence_of %i[name type length height width weight]

  after_create :calulate_area

  private

  def calulate_area
    self.area = length * width * height
    save
  end
end
