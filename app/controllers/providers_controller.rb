class ProvidersController < ApplicationController
  before_action :find_provider, only: [:show, :edit, :update, :destroy]
  # before_action :provider_params, only: [:create, :update]
  def index
    @providers = Provider.all
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      redirect_to @provider,
        notice: 'Fornecedor cadastrado com sucesso!'
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
  end

  def destroy
  end

  private

  def find_provider
    @provider = Provider.find(params[:id])
  end

  def provider_params
    params.require(:provider).permit(:name, :cnpj)
  end
end
