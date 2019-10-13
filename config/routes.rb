Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'crus', to:'pages#crus', as: :crus
  get 'home',to:'pages#home', as: :home
  get 'terroir',to:'pages#terroir', as: :terroir
  get 'environnement',to:'pages#environnement', as: :environnement
  get 'histoire',to:'pages#histoire', as: :histoire
  get 'art',to:'pages#art', as: :art

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
