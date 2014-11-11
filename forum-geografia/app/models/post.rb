# encoding: UTF-8

class Post < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :assunto

  validates :conteudo,
  			#format: { with: /\A[a-zA-Z]+\z/ },???????
  			length: { minimum: 5},
  			presence: {message: 'O post deve ser preenchido'},


end
