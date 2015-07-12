class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :sales, dependent: :destroy

  validates_presence_of :name, :price, :provider

end
