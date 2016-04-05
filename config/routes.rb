Rails.application.routes.draw do
  
  devise_for :users
  
  resources :movies
  resources :categories

  root to: "pages#home"
  
  get 'users/:id', to: "users#show", as: :user
  get 'about', to: "pages#about", as: :about
  get 'contact', to: "pages#contact", as: :contact

end
