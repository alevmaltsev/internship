class Web::Admin::UniversitiesController < Web::Admin::ApplicationController
  def index
    @universities = University.order(created_at: :desc)
  end

  def new
    @university = University.new(params[:university])
  end

  def create
    @university = University.new(params[:university])

    if @university.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @university = University.find(params[:id])
  end

  def update
    @university = University.find(params[:id])

    if @university.update(params[:university])
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @university = University.find(params[:id])
    @university.destroy

    redirect_to action: :index
  end
end
