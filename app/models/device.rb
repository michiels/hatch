class Device < ActiveRecord::Base
  validates_presence_of :api_key
  
  before_validation_on_create :generate_api_key
  
  has_many :sensors
  
  def self.shoot_rockets
    url = URI.parse("http://192.168.1.33/Missile%20Webservice/Service1.asmx/Fire")
    Net::HTTP.get_print url
  end
  
  private

    def generate_api_key
      self.api_key = Digest::MD5.hexdigest(Time.now.to_s)
    end
end
