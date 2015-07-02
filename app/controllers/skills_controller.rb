class SkillsController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @projects = Project.all
    @skill = Skill.find(params[:id])
    render :show
  end

  def new
    @user = User.find(params[:user_id])
    @skill = @user.skills.new
  end

  def create
    @user = User.find(params[:user_id])
    @skill = @user.skills.new(skill_params)
    if @skill.save
      redirect_to user_path(@skill.user)
    else
      render :new
    end
  end

private
  def skill_params
    params.require(:skill).permit(:name, :description, :category)
  end
end
