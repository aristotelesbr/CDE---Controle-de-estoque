class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to @product,
          notice: 'Produto cadastrado com sucesso!'
      else
        render 'new',
          alert: 'Não foi possivel salvar o registro.'
      end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path,
        notice: 'O registro foi atualizado com sucesso!'
    else
      render @product,
        alert: 'Houve um erro, tente novamente.'
    end
  end

  def destroy
    @product.destroy
      redirect_to root_path,
        notice: 'O registro foi excluido'
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :provider_id, :info)
  end
end
