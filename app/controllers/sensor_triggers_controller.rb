class SensorTriggersController < ApplicationController
  def index
    @device = Device.find(params[:device_id])
  end  
  
  def create
    @device = Device.find(params[:device_id])
    @sensor_trigger = @device.sensor_triggers.new(params[:sensor_trigger])
    
    if @sensor_trigger.save
      flash[:success] = "Added the action for the sensor"
      redirect_to device_sensor_triggers_path(@device)
    else
      render :action => :index
    end
  end
end
