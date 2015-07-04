module ApplicationHelper
  def select_provider
    @provider = Provider.order :name
  end
end
