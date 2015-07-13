Rails.application.routes.draw do
  devise_for :users
  resources :providers, :products

  resources :sales do
    get 'search', on: :collection
  end

  get 'reports/index'
  root 'welcome#index'


  # post 'sales/create'  => 'sales#create'
  # get  'sales/new'    => 'sales#new'
  # get  'sales/:id'    => 'sales#show'

end
