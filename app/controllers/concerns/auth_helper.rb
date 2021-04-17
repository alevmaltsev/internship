module AuthHelper
  def student_sign_in(student)
    session[:student_id] = student.id
  end

  def student_sign_out
    session[:student_id] = nil
  end

  def current_student
    ::Student.find_by(id: session[:student_id])
  end

  def student_signed_in?
    current_student
  end

  def authenticate_student!
    redirect_to new_student_session_path unless student_signed_in?
  end
end
