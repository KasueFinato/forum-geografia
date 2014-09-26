# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Usuario.create nome: 'Hellen Barros', email: 'juliebcruz@brturbo.com.br', login: 'juliebcruz', senha: 'pb131811e11', nascimento: '29-08-1996'

	Usuario.create nome: 'Karoline Miki', 
				   email: 'kasuefinato@gmail.com', 
				   login: 'kasuemiki', 
				   senha: 'chinaliexpres',
				   nascimento: '01-03-1996'

	Usuario.create nome: 'Luiza Santos', 
				   email: 'luizaosorio@gmail.com', 
				   login: 'luizaosorio', 
				   senha: 'legginswhey',
				   nascimento: '22-01-1997'

	@usuario = Usuario.new nome: 'Karoline Miki', email: 'kasuefinato@gmail.com', login: 'kasuemiki', senha: 'chinaliexpres', nascimento: '01-03-1996'