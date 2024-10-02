class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: 'プロジェクトが正常に作成されました。'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'プロジェクトが正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'プロジェクトが正常に削除されました。'
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :status, :is_roll, :mark_dimensions_x, :mark_dimensions_y, :mark_dimensions_roll, :imposition_x, :imposition_y, :number_of_plates, :other, :user_id, :client_id, :factory_id)
  end
end
