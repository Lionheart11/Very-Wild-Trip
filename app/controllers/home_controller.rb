class HomeController < ApplicationController
	def index
    	@hobbies = Hobby.all
    end
end
