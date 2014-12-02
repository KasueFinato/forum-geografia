# encoding: UTF-8
class UsuarioMailer < ActionMailer::Base
  default from: "forum.geografia.ifrs@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usuario_mailer.cadastrado.subject
  #
  def cadastrado(u)
    @usuario = u

    mail to: u.email, subject: "[FG]Confirmação de seu cadastro"

  end
end
