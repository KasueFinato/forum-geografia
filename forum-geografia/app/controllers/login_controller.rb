class LoginController < ApplicationController

	def logar
		if @usuario = Usuario.find(params[:login])
			if @usuario.senha == (params[:senha])
				render text:'colocar usuario na sesion e mandar para home'
			else
				render text:'erro de senha errada'
			end
		else
			render text: 'erro de usuario inexistente'
		end
	end
end
