class Post < ActiveRecord::Base
  belongs_to :id_usuario
  belongs_to :id_assunto
end
