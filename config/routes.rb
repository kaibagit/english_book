Rails.application.routes.draw do
  resources :examples
  resources :meanings
  resources :vocabularies do
    member do
      get 'start_link_phrase'
      post 'link_phrase'
    end
  end
  resources :related_words do
    member do
      get 'start_add_vocabulary'
      post 'add_vocabulary'
    end
  end
  # get '/related_words/start_add_vocabulary' => "related_word#start_add_vocabulary"
  get '/review' => "review#index",   :as => "review"
  post '/review/remember' => "review#remember"
  post '/review/donot_remember' => "review#donot_remember"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
end
