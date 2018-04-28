# This file creates the records in your DB

require 'active_record'

require_relative 'db_models'
require_relative 'db_connection'

include DbConnection

connect_to_db!

puts 'Creating Buyers...'

igor = Buyer.create!(name: 'Igor')
alex = Buyer.create!(name: 'Alex')
mike = Buyer.create!(name: 'Mike')

puts 'Buyers created!'

puts 'Creating Stores'

Store1.create!(buyer_id: igor.id, total_order: 1, total_itens: 2)
Store2.create!(buyer_id: igor.id, total_order: 1, total_itens: 2)
Store3.create!(buyer_id: igor.id, total_order: 1, total_itens: 2)

Store1.create!(buyer_id: mike.id, total_order: 1, total_itens: 2)
Store1.create!(buyer_id: alex.id, total_order: 1, total_itens: 2)

Store2.create!(buyer_id: alex.id, total_order: 2, total_itens: 2)

Store3.create!(buyer_id: mike.id, total_order: 3, total_itens: 2)

puts 'Stores created!'
