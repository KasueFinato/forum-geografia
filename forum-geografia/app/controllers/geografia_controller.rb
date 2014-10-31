class GeografiaController < ApplicationController
	
	def index
		@posts = Post.all
		@tipo = params[:tipo]
	
	end
	
end
