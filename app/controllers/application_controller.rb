class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #
  #
  #  cool
  protect_from_forgery with: :exception
  def index
  end
end
