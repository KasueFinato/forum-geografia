class Post < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :assunto
end
