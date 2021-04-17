class ApplicationController < ActionController::Base
  include AuthHelper
  helper_method :student_signed_in?, :current_student
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
end
