class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # ensure authorization happens on every action in the app
  check_authorization :unless => :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    @shops = Shop.all
    flash[:notice] = 'Yo! That feature is not yet available. Please contact eugiellimpin@gmail.com for more details. Thanks!'
    render 'shops/index'
  end
end
