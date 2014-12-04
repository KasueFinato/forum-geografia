# encoding: UTF-8
class Comentario < ActiveRecord::Base
	belongs_to :post
end