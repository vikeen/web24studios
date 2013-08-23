class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = 'Project was successfully created!'
      redirect_to @project
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(params[:project])
      flash[:success] = 'Project was successfully updated!'
      redirect_to @project
    else
      flash[:error] = 'Failed to update project.'
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      flash[:success] = "#{@project.title} was successfully deleted."
      redirect_to projects_url
    else
      flash[:error] = 'Failed to delete project.'
      redirect_to @project
    end
  end
end
