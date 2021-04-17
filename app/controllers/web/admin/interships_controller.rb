class Web::Admin::IntershipsController < Web::Admin::ApplicationController
  def index
    @interships = Intership.order(created_at: :desc)
  end

  def new
    @intership = Intership.new(params[:intership])
  end

  def create
    @intership = Intership.new(params[:intership])

    if @intership.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @intership = Intership.find(params[:id])
  end

  def update
    @intership = Intership.find(params[:id])

    if @intership.update(params[:intership])
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @intership = Intership.find(params[:id])
    @intership.destroy

    redirect_to action: :index
  end
end
