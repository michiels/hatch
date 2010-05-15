class RemoveTypeFromSensors < ActiveRecord::Migration
  def self.up
    remove_column :sensors, :type
  end

  def self.down
    add_column :sensors, :type, :string
  end
end
