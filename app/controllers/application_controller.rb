# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  #protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  before_filter :detect_iphone
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  # Detect if user agent is iPhone
  def detect_iphone
    if request.user_agent.include?("iPhone") then
      request.format = :iphone
      render :layout => 'application.iphone.haml'
    else
      render :layout => 'application.html.haml'
    end
  end
  
end