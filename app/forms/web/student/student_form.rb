class Web::Student::StudentForm < Student
  include BaseForm

  permit :first_name, :last_name, :middle_name, :email, :university_id, :password
end
