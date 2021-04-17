class ApplicationController < ActionController::Base
  include AuthHelper
  helper_method :student_signed_in?
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
end
