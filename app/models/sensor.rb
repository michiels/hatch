class Sensor < ActiveRecord::Base
  validates_presence_of :pin_number
  validates_presence_of :sensor_type
  
  belongs_to :device
  has_many :sensor_triggers
end
