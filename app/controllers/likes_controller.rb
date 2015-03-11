class LikesController < ApplicationController
	
  def count_up
  	puts "##################\nCounting up\n##################"
  	respond_to do |fmt|
  		fmt.html { }
  		fmt.js { $(".like").text("You like this"); }
  	end
  end
end
