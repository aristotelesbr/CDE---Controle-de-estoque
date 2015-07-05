class Sale < ActiveRecord::Base
  belongs_to :product

  def self.sales_total
    self.sum(:quantity)
  end
end
