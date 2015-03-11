class SongsController < ApplicationController
  attr_reader :songs
  def index
    @songs = Song.all
  end
  attr_accessor :song
  attr_reader :id
  
  def like
  	@id = params[:id]
   respond_to do |fmt|
  		fmt.html {  }
  		fmt.js { render 'like_response' }
  	end
  end

end
