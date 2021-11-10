Rails.application.routes.draw do
  get 'staticpages/top'
  devise_for :users, :controllers => {
    :sessions => 'users/sessions'
   }
  root to: 'staticpages#top' 
  resources :posts do
    collection do
      get 'search'
    end
  end
end
