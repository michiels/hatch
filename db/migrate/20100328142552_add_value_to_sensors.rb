class AddValueToSensors < ActiveRecord::Migration
  def self.up
    add_column :sensors, :value, :integer
  end

  def self.down
    remove_column :sensors, :value
  end
end
