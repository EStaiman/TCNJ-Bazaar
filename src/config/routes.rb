Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :textbooks
  resources :sessions, only: [:new, :create, :destroy]
  
  get 'about', to: "welcome#faq", as: "about_path"
  get 'profile', to: "users#profile", as: "profile_path"
  get 'textbooks/:id/offer', to: "textbooks#offer", as: "offer_path"
  get 'login', to: "sessions#new", as: "login"
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'contact', to: "contact#index", as: :contact_path
  get 'sell', to: "textbooks#new", as: :sell_path
  get 'welcome', to: "welcome#index", as: :welcome_path
  get 'browse', to: "textbooks#index", as: :browse_path
  get 'browese_all', to: "textbooks#index", as: :browse_all_path
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
