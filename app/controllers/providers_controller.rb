class ProvidersController < ApplicationController
  before_action :find_provider, only: [:show, :edit, :update, :destroy]
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
    if @provider.update(provider_params)
      redirect_to providers_path,
        notice: 'Registro atualizado com sucesso!'
    else
      render @provider,
        alet: 'Não foi possivel salvar as alteraçõe. Tente novamente.'
    end
  end

  def destroy
    @provider.destroy
      redirect_to root_path,
        notice: 'O registro foi excluido.'
  end

  private

  def find_provider
    @provider = Provider.find(params[:id])
  end

  def provider_params
    params.require(:provider).permit(:name, :cnpj)
  end
end
