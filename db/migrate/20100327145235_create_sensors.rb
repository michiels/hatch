class CreateSensors < ActiveRecord::Migration
  def self.up
    create_table :sensors do |t|
      t.integer :slot, :null => false
      t.string :sensor_type, :null => false
      t.belongs_to :device
      t.timestamps
    end
  end

  def self.down
    drop_table :sensors
  end
end
