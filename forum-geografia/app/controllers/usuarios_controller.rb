# encoding: UTF-8
class UsuariosController < ApplicationController
	#before_action :set_aluno, only: [:show, :edit, :update, :destroy]

	def index
		@usuarios = Usuario.all
	end

	def show

	end

	def new
		@usuario = Usuario.new()
	end

	def create
    	@usuario = Usuario.new(params.require(:usuario).permit(:nome, :email, :login, :nascimento, :senha))
    
    	if @usuario.save
    		redirect_to :usuarios, notice: "#{@usuario.nome} cadastrado com sucesso"
    	else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      		render :new
    	end
  	end
end
