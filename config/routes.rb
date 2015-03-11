Rails.application.routes.draw do
  #get 'likes/count_up'

  #get 'songs/index'
  put '/like' => 'songs#like'
  resources :songs do
  	 resources :like, only: [:count_up]
  	 #get 'likes/count_up'
  	 resources :comments, only: [:new, :delete]
  end
  
  root 'songs#index'
end
