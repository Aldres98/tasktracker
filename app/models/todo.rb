class Todo < ApplicationRecord
  belongs_to :project, required: false
  def init
    self.isCompleted = false if self.isCompleted.nil?
  end
end
