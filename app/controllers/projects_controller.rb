class ProjectsController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
    render :show
  end

  def new
    @user = User.find(params[:user_id])
    @project = @user.projects.new
  end

  def create
    @user = User.find(params[:user_id])
    @project = @user.projects.new(project_params)
    if @project.save
      redirect_to user_path(@project.user)
    else
      render :new
    end
  end

private
  def project_params
    params.require(:project).permit(:name, :short_description, :long_description, :category, :coworkers, :code_url, :hosted_url, :project_date)
  end
end
