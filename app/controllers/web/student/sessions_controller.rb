class Web::Student::SessionsController < Web::Student::ApplicationController
  def new
  end

  def create
    student = ::Student.find_by_email(params[:student][:email].strip)

    if student && student.authenticate(params[:student][:password])
      reset_session
      student_sign_in(student)
      redirect_to student_root_path
    else
      render action: :new
    end
  end

  def destroy
    student_sign_out
    redirect_to new_student_session_path
  end
end
