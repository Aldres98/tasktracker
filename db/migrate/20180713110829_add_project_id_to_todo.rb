class AddProjectIdToTodo < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :project_id, :integer
  end
end
