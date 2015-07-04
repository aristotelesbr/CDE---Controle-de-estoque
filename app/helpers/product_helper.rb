module ProductHelper
  def select_product
    @product = Product.order :name
  end
end
