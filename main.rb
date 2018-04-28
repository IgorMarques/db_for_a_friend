# This file runs your queries

require_relative 'db_connection'
require_relative 'db_models'

include DbConnection

connect_to_db!

# Dummy store to be used when we can't find a Store record for a user
class DummyStore
  def total_order
    0
  end
end

# Returns a string table for with the store data. The | can be replaced with a ;
# if you need to move this to a spreadsheet
def orders_for(buyer)
  store_1_entries = Store1.find_by(buyer_id: buyer.id) || DummyStore.new
  store_2_entries = Store2.find_by(buyer_id: buyer.id) || DummyStore.new
  store_3_entries = Store3.find_by(buyer_id: buyer.id) || DummyStore.new

  "#{buyer.name} | #{store_1_entries.total_order} | #{store_2_entries.total_order} | #{store_3_entries.total_order}"
end

igor = Buyer.find_by(name: 'Igor')
alex = Buyer.find_by(name: 'Alex')
mike = Buyer.find_by(name: 'Mike')

puts orders_for(igor)
puts orders_for(mike)
puts orders_for(alex)
