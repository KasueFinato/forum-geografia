# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Usuario.create nome: 'Hellen Barros', email: 'juliebcruz@brturbo.com.br', login: 'juliebcruz', senha: 'pb131811e11'

	Usuario.create nome: 'Karoline Miki', 
				   email: 'kasuefinato@gmail.com', 
				   login: 'kasuemiki', 
				   senha: 'chinaliexpres'
				

	Usuario.create nome: 'Luiza Santos', 
				   email: 'luizaosorio@gmail.com', 
				   login: 'luizaosorio', 
				   senha: 'legginswhey'
				  

	@usuario = Usuario.new nome: 'Karoline Miki', email: 'kasuefinato@gmail.com', login: 'kasuemiki', senha: 'chinaliexpres'

	Assunto.create assunto: 'Crise hidrica em sp', tipo: 1

	Assunto.create assunto: 'Exodo rural nos anos 30', tipo: 2

	Assunto.create assunto: 'A consistencia dos BRICS', tipo: 2

	Post.create conteudo: 'Liberdade eh o bairro que mais gasta agua, voces sabem pq?' , assunto_id: 1

	Post.create conteudo: 'Quais as conseguencias da industrializaçao dos anos 30?' , assunto_id: 2
