class TriggersController < ApplicationController
  def new
    trigger = Trigger.new
    trigger.raw_parameters = params
    trigger.save

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
