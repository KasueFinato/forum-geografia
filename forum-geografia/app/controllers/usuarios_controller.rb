class UsuariosController < ApplicationController
	#before_action :set_aluno, only: [:show, :edit, :update, :destroy]

	def index
		@usuario = Usuario.all
	end

	def show

	end

	def new
		@usuario = Usuario.new()
	end

	def create
    	@usuario = Usuario.new(params.require(:usuario).permit(:nome))
    
    	if @usuario.save
    		redirect_to @usuario
    	else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      		render "new"
    	end
  	end
end
