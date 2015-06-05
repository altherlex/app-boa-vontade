# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  #layout 'padrao'
  before_filter :set_charset
  
  def set_charset
	headers["Content-Type"] = "text/html; charset=ISO-8859-1"
  end
  
end
