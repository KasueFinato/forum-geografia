#encoding: UTF-8
require 'digest'
class LoginController < ActionController::Base

	def index
		render layout: 'bootstrap'
	end


	def login
		u = Usuario.find_by_login_and_senha(params[:login], Digest::MD5.hexdigest(params[:senha]))
		if u.nil?
			flash[:error] = 'Nome ou senha inválidos' #flash não aparece #tentar com notice************
			render :index, layout: 'bootstrap'
		else
			session[:usuario] = u.nome
			session[:usuario_id] = u.id
			redirect_to root_path, notice: 'Logado com sucesso' #notice não aparece
		end
		#redirect_to :usuarios
		#render text: 'Oi mundo'
		# if @usuario = Usuario.find_by_login(params[:login])
		# 	if @usuario.senha == (params[:senha])
		# 		render text:'colocar usuario na sesion e mandar para home'
		
		# 	else
		# 		render text:'erro de senha errada'
		# 	end
		# else
		# 	render text: 'erro de usuario inexistente'
		# end
	end

	def logout
		reset_session
		redirect_to root_path, notice: 'Você foi deslogado'
	end
end
