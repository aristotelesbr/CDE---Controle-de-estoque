class Sale < ActiveRecord::Base
  belongs_to :product

  # Soma todos os preços.
  def self.sales_total
    self.joins(:product).sum('products.price * sales.quantity')
  end

  # Cria um total para cada produto vendido * a quantidade.
  def self.price_list
    select('sales.*,
      (sales.quantity * products.price) AS total')
      .joins('LEFT JOIN products on sales.product_id = products.id').load
  end
end
