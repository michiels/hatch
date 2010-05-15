class SensorsController < ApplicationController
  
  def index
    @device = Device.find(params[:device_id])
    
    @sensor = @device.sensors.new
  end
  
  def create
    @device = Device.find(params[:device_id])
    
    @sensor = @device.sensors.new(params[:sensor])
    
    if @sensor.save
      flash[:success] = "Successfully added the sensor."
      redirect_to device_sensors_path(@device)
    else
      render :action => :index
    end
  end
  
  def destroy
    @device = Device.find(params[:device_id])
    @sensor = @device.sensors.find(params[:id])
    
    if @sensor.destroy
      flash[:success] = "Successfully removed the sensor"
    else
      flash[:error] = "Cannot remove the sensor"
    end
    
    redirect_to device_sensors_path(@device)
  end
end
