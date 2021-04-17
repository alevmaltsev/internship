class Web::Admin::SkillsController < Web::Admin::ApplicationController
  def index
    @skills = Skill.order(created_at: :desc)
  end

  def new
    @skill = Skill.new(params[:skill])
  end

  def create
    @skill = Skill.new(params[:skill])

    if @skill.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])

    if @skill.update(params[:skill])
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    redirect_to action: :index
  end
end
