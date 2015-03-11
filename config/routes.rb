Rails.application.routes.draw do
  #get 'likes/count_up'

  #get 'songs/index'
  put '/like' => 'songs#like'
  resources :songs do
  	 resources :likes, only: [:count_up]
  	 #get 'likes/count_up'
  	 resources :comments, only: [:new, :create]
  end
  
  root 'songs#index'
end
