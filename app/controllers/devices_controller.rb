class DevicesController < ApplicationController
  
  def fire
    Device.shoot_rockets
  end
  
end