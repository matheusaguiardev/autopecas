# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |i|
  puts "cadastrado de peça - #{i}"
  user_name = Faker::App.name
  vahicle = Faker::Vehicle.manufacture
  cod_num = Faker::Number.number(5)
  estoque = Faker::Number.between(1, 20)
  informacao = Faker::Superhero.name
  pratileira_sufix = Faker::Name.suffix
  mount = Faker::StarWars.droid
  price_fake = "R$ #{Faker::Commerce.price}"
  Autopeca.create(nome: user_name, num_fabrica: cod_num, montadora: mount, aplicacao: vahicle, valor_compra: price_fake, valor_venda: price_fake, codigo_peca: cod_num, estoque: estoque, grupo: mount, info: informacao, pratileira: pratileira_sufix)
end
