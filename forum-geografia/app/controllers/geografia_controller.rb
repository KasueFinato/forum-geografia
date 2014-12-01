class GeografiaController < ApplicationController
	
	def index
		@tipo = params[:tipo]

		if @tipo = 'humana'
			@posts = Post.all

		end

	
	end
	
end
