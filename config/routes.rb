Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  constraints subdomain: 'api' do
    namespace :api, defaults: {format: 'json'} do
      namespace :v1 do
        resources :users
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
