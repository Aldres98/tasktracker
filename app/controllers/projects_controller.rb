class ProjectsController < ApplicationController
  def index
    @todo = Todo.new
    @projects = Project.all
    respond_to do |format|
      format.html
      format.json {render json: @projects}
    end
  end

  def update
  end

  def create
  end

  def delete
  end

end
