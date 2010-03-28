class AddPinsToSensors < ActiveRecord::Migration
  def self.up
    add_column :sensors, :pin_number, :integer, :null => false
    remove_column :sensors, :slot
  end

  def self.down
    add_column :sensors, :slot, :integer,        :null => false
    remove_column :sensors, :pin_number
  end
end
