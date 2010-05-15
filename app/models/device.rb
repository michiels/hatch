class Device < ActiveRecord::Base    
  has_many :sensors
  has_many :sensor_triggers
  
  validates_presence_of :device_id
  
  accepts_nested_attributes_for :sensor_triggers
  
end
