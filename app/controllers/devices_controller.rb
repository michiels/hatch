class DevicesController < ApplicationController
  def update
    @device = Device.find(params[:id])
    
    if @device.update_attributes(params[:device])
      flash[:success] = "Successfully saved the changes"
      redirect_to device_sensor_triggers_path(@device)
    else
      flash[:error] = "Cannot update the sensors"

    end
  end
end