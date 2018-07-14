class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def update
  end

  def create
    @todo = Todo.create(todo_params)
  end

  def delete
  end

  private

def todo_params
  params.require(:todo).permit(:text, :project_id)
end

end
