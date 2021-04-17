class ApplicationController < ActionController::Base
  include AuthHelper
  helper_method :student_signed_in?
end
