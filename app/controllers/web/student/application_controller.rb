class Web::Student::ApplicationController < Web::ApplicationController
  layout 'web/student/application'

  def current_student
    Student.first
  end
end
