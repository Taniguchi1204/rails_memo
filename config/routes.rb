Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  
  resources :users,             only:[:show, :edit, :update]
  resources :questions,         only:[:index, :create, :edit, :update, :destroy] do
    resource :favorite_quesions, only:[:create, :destroy]
  end
  resources :genres,            only:[:create, :destroy]
  resources :tests,             only:[:show]
  
end
