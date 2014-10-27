# encoding: UTF-8
require 'digest'

class UsuariosController < ApplicationController
	#before_action :set_aluno, only: [:show, :edit, :update, :destroy]

	def index
		@usuarios = Usuario.all
	end

	def show
		@usuario = Usuario.find(params[:id])
	end

	def edit
		@usuario = Usuario.find(params[:id])
	end

	def update
		@usuario = Usuario.find(params[:id])
		if @usuario.update(params.require(:usuario).permit(:nome, :email, :login, :nascimento, :senha))
			redirect_to :usuarios, notice: "#{@usuario.nome} atualizado com sucesso" #não ta aparecendo
    	else
      		render :edit
		end
	end

	def new
		@usuario = Usuario.new()
	end

	def create
    	@usuario = Usuario.new(params.require(:usuario).permit(:nome, :email, :login, :nascimento, :senha))
    	@usuario.senha = Digest::MD5.hexdigest(@usuario.senha)

    	if @usuario.save
    		redirect_to :usuarios, notice: "#{@usuario.nome} cadastrado com sucesso" #não ta aparecendo
    	else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      		render :new
    	end
  	end

  	def destroy
  		u = Usuario.find params[:id]
  		u.destroy
  		redirect_to :usuarios, notice: "usuario #{u.nome} excluido"
	end

	def pesquisar
		@usuarios = Usuario.where("nome like '%#{params[:pesquisa]}%'")
		render :index
	end
end
