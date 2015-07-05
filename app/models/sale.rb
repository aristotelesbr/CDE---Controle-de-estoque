class Sale < ActiveRecord::Base
  belongs_to :product

  def self.sales_total
    self.sum(:quantity)
  end

# Loading...
  def self.tot
    self.includes(:product).sum(:price)
  end
end
