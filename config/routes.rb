Rails.application.routes.draw do
  devise_for :members
  root to:"homes#top"
  resources :items, only:[:index, :show, :new, :create, :destroy, :edit]
end
