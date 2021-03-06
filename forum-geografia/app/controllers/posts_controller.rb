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
		@assuntos = Assunto.all
	end

	def create

		@post = Post.new(params.require(:post).permit(:conteudo, :assunto_id))
		#@aluno = Aluno.new params.require(:aluno).
		#		permit(:nome, :matricula, :senha, :email, :turma_id)
		
		usuario = Usuario.find (session[:usuario_id])
		#Usuario.new('Luiza Maria','luiza.kkkk@gmail.com','luizakkkk','lailai', '02-01-1997')
		#assunto = Assunto.find(params[:])
		outroassunto=params[:outroassunto]
    	 	
    	#assunto = Assunto.find(params[:assunto])
    	tipo = params[:tipo]    	
    	
    	@post.data = DateTime.now()
    	
    	@post.usuario = usuario

    	if (outroassunto == '' or outroassunto == nil)
    		#assunto da select
	    	@post.assunto_id = params[:assunto_id]
    
	    else
	    	outroassuntosalva = Assunto.new()

	    	if tipo=='fisica'
    			outroassuntosalva.tipo = 1
    		end

    		if tipo=='humana'
    			outroassuntosalva.tipo = 2
    		end

    		outroassuntosalva.assunto = outroassunto    		
    		outroassuntosalva.save
	    	x = Assunto.find_by_assunto ("#{outroassuntosalva.assunto}")
		    @post.assunto_id = x.id
		    
		    #redirect_to :usuarios
	    end
    	#@post.assunto = assunto
    	
    	if @post.save
    		redirect_to :posts, notice: "Novo post inserido com sucesso" #não ta aparecendo
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

	def show_comentar
		@coment = Comentario.new()
		@post = Post.find params[:id]
		@criador = Usuario.find @post.usuario_id
		render :comentar
	end

	def show_humanas
		assuntos = Assunto.where(tipo: 2)
		assuntos.each do |assunto|
			x = assunto.id
			@posts = Post.where(assunto_id: x)
		end
		render :geo_humana
	end

	def show_fisicas
		assuntos = Assunto.where(tipo: 1)
		assuntos.each do |assunto|
			x = assunto.id
			@posts = Post.where(assunto_id: x)
		end
		render :geo_fisica
	end
end
