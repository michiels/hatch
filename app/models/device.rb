class Device < ActiveRecord::Base
  validates_presence_of :api_key
  
  before_validation_on_create :generate_api_key
  
  has_many :sensors
  
  private

    def generate_api_key
      self.api_key = Digest::MD5.hexdigest(Time.now.to_s)
    end
end
