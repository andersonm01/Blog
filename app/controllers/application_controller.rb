class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :current_user, unless: :devise_controller?
  before_action :authenticate_user!
end
