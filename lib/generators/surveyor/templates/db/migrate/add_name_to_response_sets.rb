# encoding: UTF-8
class AddNameToResponseSet < ActiveRecord::Migration
  def self.up
    add_column :response_set, :name, :string
  end

  def self.down
    remove_column :response_set, :name
  end
end

