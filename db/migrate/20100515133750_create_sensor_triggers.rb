class CreateSensorTriggers < ActiveRecord::Migration
  def self.up
    create_table :sensor_triggers do |t|
      t.belongs_to :sensor_id
      t.belongs_to :device_id
      t.string :condition
      t.string :condition_value

      t.timestamps
    end
  end

  def self.down
    drop_table :sensor_triggers
  end
end
