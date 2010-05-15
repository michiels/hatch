class CreateSensorActions < ActiveRecord::Migration
  def self.up
    create_table :sensor_actions do |t|
      t.belongs_to :sensor_trigger
      t.string :what
      t.text :what_data

      t.timestamps
    end
  end

  def self.down
    drop_table :sensor_actions
  end
end
