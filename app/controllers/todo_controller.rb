class TodoController < ApplicationController

def index
  @todos = Todo.all
  respond_to do |format|
    format.json {render json: @todos}
  end
end

  def create
    @todo = Todo.new(todo_params)
  respond_to do |format|
    if @todo.save
      format.html { redirect_to root_path, notice: 'Todo was successfully created.' }
      format.json { render :show, status: :created, location: @todo }
    else
      format.html { render :new }
      format.json { render json: @todo.errors, status: :unprocessable_entity }
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
