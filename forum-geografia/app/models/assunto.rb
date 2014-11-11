# encoding: UTF-8

class Assunto < ActiveRecord::Base
	has_many :posts

	validates :assunto,
  			#format: { with: /\A[a-zA-Z]+\z/ }, ????
  			length: { in: 10..30 },
  			presence: {message: 'O assunto deve ser preenchido'},
  			uniqueness: {message: 'Esse assunto já foi cadastrado'}
end
