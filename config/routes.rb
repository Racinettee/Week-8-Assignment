Rails.application.routes.draw do
  #get 'likes/count_up'

  #get 'songs/index'
  put '/like/:id' => 'songs#like'
  resources :songs do
  	 resources :like, only: [:count_up]
  	 resources :comments
  end
  
  root 'songs#index'
end
