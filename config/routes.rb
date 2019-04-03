Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  resources :chukkers
  resources :games
  resources :horses
  resources :lessons
  resources :group_lessons
end
