class Web::Admin::CompanySpecialtiesController < Web::Admin::ApplicationController
  def index
    @specialties = Company::Specialty.order(name: :asc)
  end

  def new
    @specialty = Company::Specialty.new(params[:company_specialty])
  end

  def create
    @specialty = Company::Specialty.new(params[:company_specialty])

    if @specialty.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @specialty = Company::Specialty.find(params[:id])
  end

  def update
    @specialty = Company::Specialty.find(params[:id])

    if @specialty.update(params[:company_specialty])
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @specialty = Company::Specialty.find(params[:id])
    @specialty.destroy

    redirect_to action: :index
  end
end
