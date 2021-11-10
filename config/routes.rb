Rails.application.routes.draw do
  get 'staticpages/top'
  devise_for :users, :controllers => {
    :sessions => 'users/sessions'
   }
  root to: 'staticpages#top' 
  resources :posts
end
