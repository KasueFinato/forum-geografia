#encoding: UTF-8
class LoginController < ActionController::Base

	def logar
		#redirect_to :usuarios
		#render text: 'Oi mundo'
		if @usuario = Usuario.find_by_login(params[:login])
			if @usuario.senha == (params[:senha])
				render text:'colocar usuario na sesion e mandar para home'
		
			else
				render text:'erro de senha errada'
			end
		else
			render text: 'erro de usuario inexistente'
		end

#User.find_by(id: session[:current_user_id])
#redirect_to @usuario
	end
end
