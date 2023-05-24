require 'active_record'

class CreateUserTable < ActiveRecord::Migration[5.2]
  def up
    create_table :attendees do |table|
      table.string :name
      table.integer :age
      table.string :email
      table.timestamps
    end
  end
end