# This class connects to a DB you specify inside the `establish_connection method`
# SQLITE3 can be replaced with postgresql, for example

require 'sqlite3'

module DbConnection
  def connect_to_db!
    ActiveRecord::Base.establish_connection(
      adapter:  'sqlite3',
      host:     'localhost',
      username: 'me',
      password: 'secret',
      database: 'activerecord'
    )
  end
end
