class TodoController < ApplicationController
  skip_before_action :verify_authenticity_token
def index
  @todos = Todo.all
  respond_to do |format|
    format.json {render json: @todos}
  end
end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to root_path
    end
  end
end

def update
  @todo = Todo.find(params[:id])
  @todo.isCompleted = !@todo.isCompleted
  @todo.save
  redirect_to root_path
end

  private

def todo_params
  params.require(:todo).permit(:text, :project_id)
end

end
