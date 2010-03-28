class Sensor < ActiveRecord::Base
  validates_presence_of :pin_number
  validates_presence_of :sensor_type
  validates_uniqueness_of :pin_number
  
  belongs_to :device
  
  Modes = ["rx", "tx", "i", "p", "i", "p", "p", "i", "i", "p", "a", "a", "a", "a"]
end
