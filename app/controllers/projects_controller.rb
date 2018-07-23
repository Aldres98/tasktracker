class ProjectsController < ApplicationController
  def index
    @todo = Todo.new
    @projects = Project.all
    # respond_to do |format|
    #   format.html
    #   format.json {render json: @projects}
    # end
    respond_to :html, :json
  end

  def update
  end

  def create
  end

  def delete
  end

end
