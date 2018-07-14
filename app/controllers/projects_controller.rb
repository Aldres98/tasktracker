class ProjectsController < ApplicationController
  def index
    @todo = Todo.new
    @projects = Project.all
  end

  def update
  end

  def create
  end

  def delete
  end

end
