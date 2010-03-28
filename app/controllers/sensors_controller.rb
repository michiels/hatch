class SensorsController < ApplicationController
  
  def index
    @device = Device.find(params[:device_id])
    @sensors = @device.sensors.find(:all)
  end
  
  def new
    @device = Device.find(params[:device_id])
    @devices = Device.find(:all)
    @sensor = @device.sensors.new
  end
  
  def create
    @device = Device.find(params[:device_id])
    @devices = Device.find(:all)
    @sensor = Sensor.new(params[:sensor])
    @sensor.device_id = params[:device_id]
    
    if @sensor.save
      flash[:notice] = "Successfully created sensor"
      redirect_to :action => :index
    else
      flash[:notice] = "Something went wrong, please make sure to the pin number is unique."
      render :action => :new
    end
  end
  
  def edit
    @device = Device.find(params[:device_id])
    @devices = Device.find(:all)
    @sensor = Sensor.find(params[:id])
  end
  
  def update
    @device = Device.find(params[:device_id])
    @devices = Device.find(:all)
    @sensor = Sensor.find(params[:id])
    
    if @sensor.update_attributes(params[:sensor])
      flash[:notice] = "Succesfully updated the sensor."
      redirect_to :action => :index
    else
      flash[:notice] = "Something went wrong, please make sure to the pin number is unique."
      render :action => :edit
    end
  end
  
  def destroy
    @sensor = Sensor.find(params[:id])
    if @sensor.destroy
      flash[:notice] = "Successfully deleted the sensor."
      redirect_to :action => :index
    else
      flash[:notice] = "Delete Fail!"
      render :action => :edit
    end
  end
  
end