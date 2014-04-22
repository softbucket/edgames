class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_up_cms_data
  
  def set_up_cms_data
    @cms_pages = Cms.all.to_a
  end
end
