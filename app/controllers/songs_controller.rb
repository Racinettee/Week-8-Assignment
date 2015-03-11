class SongsController < ApplicationController
  attr_reader :songs
  def index
    @songs = Song.all
  end
  attr_accessor :song
  
  def like
     puts 'HIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII'
   respond_to do |fmt|
  		fmt.html {
  		puts '############# responding from html #############'
  		render partial: "You liked that".html_safe
  	   }
  		fmt.js { render 'like_response' }
  	end
  end

end
