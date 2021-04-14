Rails.application.routes.draw do
  
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions',
    passwords: 'admins/passwords'
  }
 
  devise_for :members

  root to:"homes#top"
  
  namespace :admins do
    resources :items, only:[:index, :show, :new, :create, :destroy, :edit]
  end
  
  resources :items, only:[:index]
  
end
