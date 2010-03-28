class AddDeviceIdToDevice < ActiveRecord::Migration
  def self.up
    add_column :devices, :device_id, :string
  end

  def self.down
    remove_column :devices, :device_id
  end
end
