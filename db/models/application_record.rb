require 'active_record'

class ApplicationRecord < ActiveRecord::Base
  ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')
end