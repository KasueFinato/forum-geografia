# encoding: UTF-8

class Usuario < ActiveRecord::Base
  belongs_to :nivel
  has_many :posts

  validates :nome,
  			#format: { with: /\A[a-zA-Z]+\z/ },???????
  			length: { in: 10..100, message:"O nome deve ter mais de 10 letras" },#curto pq no html não passa de 100 já.. mas não funfou
  			presence: {message: 'O nome deve ser preenchido'}

  validates :email,
  			#email: true,
  			presence: {message: 'O email deve ser preenchido'},
  			length: { in: 5..140, message:"O tamanho do email é inválido" },
  			uniqueness: {message: 'Esse email já foi cadastrado'}
 
  validates :login,
  			presence: {message: 'O login deve ser preenchido'},
  			length: { in: 5..50, message:"O login deve ter mais de 5 letras" },
  			uniqueness: {message: 'Esse login já foi cadastrado'}

  validates :senha,
        #exclude: => %w[ asdf qwert zxcv ],
  			length: { in: 5..32, message:"O senha deve ser maior" },
  			presence: {message: 'A senha deve ser preenchida'}


  validate :email_formatado

  private  
  def email_formatado
    if not email.blank?
      errors.add(:email, "Email inválido") unless email =~ /[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/
    end
  end

end



#private
#  def data_nascimento_validacaoq2
#    errors.add :nascimento, ''
#  end
#como usar essa validaçao?
# class EmailValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
#       record.errors[attribute] << (options[:message] || "Não é um email")
#     end
#   end
# end
