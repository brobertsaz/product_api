class Product
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :length, type: Integer
  field :width, type: Integer
  field :height, type: Integer
  field :weight, type: Integer

  validates_presence_of :name
  validates_presence_of :type
  validates_presence_of :length
  validates_presence_of :height
  validates_presence_of :width
end
