module ProviderHelper
  def select_provider
    @provider = Provider.order :name
  end
end
