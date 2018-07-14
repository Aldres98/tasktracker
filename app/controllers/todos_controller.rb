class TodosController < ApplicationController

  def create
    @todo = Todo.new(todo_params)
  respond_to do |format|
    if @todo.save
      format.html { redirect_to projects_index_url, notice: 'Todo was successfully created.' }
      format.json { render :show, status: :created, location: @todo }
    else
      format.html { render :new }
      format.json { render json: @todo.errors, status: :unprocessable_entity }
    end
  end
end

  private

def todo_params
  params.require(:todo).permit(:text, :project_id)
end

end
