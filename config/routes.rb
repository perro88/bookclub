Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root to: "books#index"
  resources :books, :authors
end
