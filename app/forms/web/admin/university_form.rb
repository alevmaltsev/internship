class Web::Admin::UniversityForm < University
  include BaseForm

  permit :name, :description, :email, :password
end
