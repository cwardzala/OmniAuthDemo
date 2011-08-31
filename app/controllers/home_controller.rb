class HomeController < ApplicationController
	def index
		@auth = request.env["omniauth.auth"]
	end
	def about
	end
end
