Rails.application.routes.draw do
  resources :providers, :products
  devise_for :users

  resources :sales do
    get 'search', on: :collection
  end

  root 'welcome#index'
  get 'reports/index'


  # post 'sales/create'  => 'sales#create'
  # get  'sales/new'    => 'sales#new'
  # get  'sales/:id'    => 'sales#show'

end
