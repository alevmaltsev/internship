class Web::Student::ProfilesController < Web::Student::ApplicationController
  def index
    @student = current_student
  end

  def edit
    @student = current_student
  end

  def update
    @student = current_student

    if @student.update(params[:student])
      redirect_to student_root_path
    else
      render action: :edit
    end
  end
end
