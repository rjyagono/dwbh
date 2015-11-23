class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "dashboard"
    else
      "application"
    end
  end
  
end
