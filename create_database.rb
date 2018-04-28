# This file created your database tables.
# Beware that this can damage a database you already have in place

require 'active_record'

require_relative 'db_connection'

include DbConnection

connect_to_db!

ActiveRecord::Schema.define do
  create_table :buyers do |t|
    t.string :name
  end

  create_table :store1s do |t|
    t.integer :total_order
    t.integer :buyer_id
    t.integer :total_itens
  end

  create_table :store2s do |t|
    t.integer :total_order
    t.integer :buyer_id
    t.integer :total_itens
  end

  create_table :store3s do |t|
    t.integer :total_order
    t.integer :buyer_id
    t.integer :total_itens
  end
end
