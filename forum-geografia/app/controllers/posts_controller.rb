# encoding: UTF-8
class PostsController < ApplicationController
	#before_action :set_aluno, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	
	def new
		@post = Post.new()
	end

	def create
		usuario = Usuario.first #Usuario.new('Luiza Maria','luiza.kkkk@gmail.com','luizakkkk','lailai', '02-01-1997')
		#assunto = Assunto.find(params[:])
    	@post = Post.new(params.require(:post).permit(:conteudo))
    	assunto = Assunto.new(params.require(:post).permit(:assunto))
    	
    	@post.data = DateTime.now()
    	
    	@post.usuario = usuario
    	@post.assunto = assunto
    	#@post.assunto = assunto
    	if @post.save
    		redirect_to :posts, notice: "#{@post.conteudo} inserido com sucesso" #não ta aparecendo
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
