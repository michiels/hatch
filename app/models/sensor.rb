class Sensor < ActiveRecord::Base
  validates_presence_of :slot
  validates_presence_of :sensor_type
  
  validates_numericality_of :slot, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 9
  
  validates_uniqueness_of :slot, :scope => :device_id
  
  belongs_to :device
end
