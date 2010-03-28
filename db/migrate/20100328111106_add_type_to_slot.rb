class AddTypeToSlot < ActiveRecord::Migration
  def self.up
    add_column :sensors, :type, :string
  end

  def self.down
    remove_column :sensors, :type
  end
end
