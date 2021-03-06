HrmApp::Application.routes.draw do
   devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  resources :users, only: [:show, :index, :destroy]
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  resources :members,only: [:index, :new, :create, :show, :edit, :destroy, :update]
  resources :assignment_histories, only: [:show, :index, :destroy]
  resources :families, only: [:show, :index, :destroy]
  resources :scores, only: [:show, :index, :destroy]
  resources :time_records, only: [:show, :index, :destroy]


end
