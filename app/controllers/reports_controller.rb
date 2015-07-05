class ReportsController < ApplicationController
  def index
    @sale_total = Sale.sales_total
    @counts = Sale.all.tot
  end
end
