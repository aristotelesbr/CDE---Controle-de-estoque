class Product < ActiveRecord::Base
  belongs_to :provider

  def self.products_total
    self.sum(:price)
  end
end
