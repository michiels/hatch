class TriggersController < ApplicationController
  def new
    
    # Save the trigger into the database.
    trigger = Trigger.new
    trigger.raw_parameters = params
    trigger.save
    
    # Do something based on the parameters of the trigger.
    
    
    # Return text based on the return parameters.

    render :text => "[OK]"
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
