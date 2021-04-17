class Web::IntershipsController < Web::ApplicationController
  def index
    @interships = Intership.order(start_at: :desc)
  end

  def show
    @intership = Intership.find(params[:id])
  end
end
