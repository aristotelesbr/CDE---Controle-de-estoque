class ReportsController < ApplicationController
  def index
    @sale_total = Sale.sales_total
    @product_total = Product.products_total
  end
end
