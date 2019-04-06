Rails.application.routes.draw do
  resources :examples
  resources :meanings
  resources :vocabularies
  get '/review' => "review#index",   :as => "review"
  post '/review/remember' => "review#remember"
  post '/review/donot_remember' => "review#donot_remember"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
end
