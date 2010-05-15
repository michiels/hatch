class TriggersController < ApplicationController
  def new
    
    # Save the trigger into the database.
    trigger = Trigger.new
    trigger.raw_parameters = params
    trigger.save
    
    if params.has_key?("deviceID") && device = Device.find_by_device_id(params[:device_id])
      
      # Do something based on the parameters of the trigger.
      params.each do |param_key, param_value|
        
        arduino_pin = param_key[1..-1] # This is actually dangerous because we don't use
                               # a regexp for recognizing an arduino get format.
                               
                
        case param_key[0..0]
        when "v" # Update the sensor with the value from Arduino
          sensor = device.sensors.find_by_pin_number(arduino_pin)
          sensor.value = param_value
          sensor.save
        end
      
      end
      
      enabled_sensors = []
      
      device.sensors.each do |sensor|
        enabled_sensors << "e#{sensor.pin_number}=1"
      end
      
      render :text => "[" + enabled_sensors.join("|") + "|t2=1|w=8000|t10=250]"
    else
      
      render :text => "[ALIVE]"
    end

  end
  
  def index
    @triggers = Trigger.find :all, :order => "created_at DESC"
  end
  
  def create
    trigger = Trigger.new
    trigger.raw_parameters = params
    trigger.save
    
    render :text => "[OK]"
  end
end
