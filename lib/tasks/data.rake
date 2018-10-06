namespace :data do
  desc 'Import the products JSON data'
  task import: :environment do
    products_data = JSON.parse(File.read(Rails.root.join('public', 'products.json')))

    products_data['products'].each do |product|
      Product.create(product.to_h)
    end
  end
end
