# encoding: UTF-8

class Usuario < ActiveRecord::Base
  belongs_to :nivel

  validates :nome,
  			presence: {message: 'O nome deve ser preenchido'}

  validates :email,
  			presence: {message: 'O email deve ser preenchido'},
  			uniqueness: {message: 'Esse email já foi cadastrado'}
end
