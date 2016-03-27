Rails.application.routes.draw do
  
  resources :movies
  root to: "movies#index"
  
  get 'about', to: "pages#about", as: :about
  get 'contact', to: "pages#contact", as: :contact

end
