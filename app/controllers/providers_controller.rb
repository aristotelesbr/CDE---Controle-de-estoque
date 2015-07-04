class ProvidersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def providers_params
    params.require(:provider).permit(:name, :cnpj)
  end
end
