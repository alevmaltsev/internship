class Web::Admin::CompaniesController < Web::Admin::ApplicationController
  def index
    @companies = Company.order(:name)
  end

  def new
    @company = Company.new(params[:company])
  end

  def create
    @company = Company.new(params[:company])

    if @company.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    if @company.update(params[:company])
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    redirect_to action: :index
  end
end
