class ApplicationController < ActionController::Base
 skip_before_action :verify_authenticity_token
 protect_from_forgery prepend: true
 
rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, alert: exception.message
end
end

