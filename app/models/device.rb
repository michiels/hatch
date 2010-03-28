class Device < ActiveRecord::Base    
  has_many :sensors
  
  validates_presence_of :device_id
    
  def self.shoot_rockets
    url = URI.parse("http://192.168.1.33/Missile%20Webservice/Service1.asmx/Fire")
    Net::HTTP.get_print url
  end
  
end
