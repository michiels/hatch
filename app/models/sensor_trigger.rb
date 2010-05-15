class SensorTrigger < ActiveRecord::Base
  belongs_to :device
  belongs_to :sensor
  
  has_many :sensor_actions
  
  accepts_nested_attributes_for :sensor_actions
end
