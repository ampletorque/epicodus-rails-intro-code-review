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

  def edit
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
    render :edit
  end

  def update
    @user= User.find(params[:user_id])
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      redirect_to user_path(@skill.user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to user_path(@skill.user)
  end

private
  def skill_params
    params.require(:skill).permit(:name, :description, :category)
  end
end
