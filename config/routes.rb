Rails.application.routes.draw do
  get 'group_lessons/index'
  get 'group_lessons/show'
  get 'group_lessons/new'
  get 'group_lessons/edit'
  get 'lessons/index'
  get 'lessons/show'
  get 'lessons/new'
  get 'lessons/edit'
  get 'horses/index'
  get 'horses/show'
  get 'horses/new'
  get 'horses/edit'
  get 'games/index'
  get 'games/show'
  get 'games/new'
  get 'games/edit'
  get 'chukkers/index'
  get 'chukkers/show'
  get 'chukkers/new'
  get 'chukkers/edit'
  devise_for :users
  root to: 'pages#home'
  resources :chukkers
  resources :games
  resources :horses
  resources :lessons
  resources :group_lessons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
