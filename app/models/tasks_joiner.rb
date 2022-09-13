class TasksJoiner < ApplicationRecord
    belongs_to :task
    belongs_to :group
    belongs_to :user
end
