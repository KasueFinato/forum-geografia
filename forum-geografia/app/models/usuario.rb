# encoding: UTF-8

class Usuario < ActiveRecord::Base
  belongs_to :nivel

  validates :nome,
  			#format: { with: /\A[a-zA-Z]+\z/ },???????
  			length: { in: 10..100 },#curto pq no html não passa de 100 já.. mas não funfou
  			presence: {message: 'O nome deve ser preenchido'}

  validates :email,
  			email: true,
  			presence: {message: 'O email deve ser preenchido'},
  			length: { in: 5..140},
  			uniqueness: {message: 'Esse email já foi cadastrado'}
 
  validates :login,
  			presence: {message: 'O login deve ser preenchido'},
  			length: { in: 5..50},
  			uniqueness: {message: 'Esse login já foi cadastrado'}

  validates :senha,
  			length: { in: 4..15},
  			presence: {message: 'A senha deve ser preenchida'}

  validates :nascimento,
  			presence: {message: 'A data de nascimento é obrigatória'}

end

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "Não é um email")
    end
  end
end
