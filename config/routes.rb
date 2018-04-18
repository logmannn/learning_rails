Rails.application.routes.draw do
  root :to => 'lists#home'
  resources :lists do
    resources :tasks
  end
end
