class Web::Admin::StudentsController < Web::Admin::ApplicationController
  def index
    @students = Student.order(created_at: :desc)
  end

  def new
    @student = Student.new(params[:student])
  end

  def create
    @student = Student.new(params[:student])

    if @student.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(params[:student])
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to action: :index
  end
end
