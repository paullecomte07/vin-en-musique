Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'vin', to:'pages#vin', as: :vin
  get 'home',to:'pages#home', as: :home
  get 'terroir',to:'pages#terroir', as: :terroir
  get 'engagement',to:'pages#engagement', as: :engagement
  get 'histoire',to:'pages#histoire', as: :histoire


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
