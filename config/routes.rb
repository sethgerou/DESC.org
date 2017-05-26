Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'summaries#index'

  resources :summaries do
    resources :links, except: [:index, :show]
  end

  resources :pages, only: [:show, :edit, :update]
  resources :sidebars, only: [:edit]
  get '/what_we_do', :to => 'welcome#what_we_do_show'
end
