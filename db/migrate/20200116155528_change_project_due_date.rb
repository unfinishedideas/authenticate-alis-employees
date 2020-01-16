class ChangeProjectDueDate < ActiveRecord::Migration[5.2]
    def change
        change_column :projects, :due_date, :string
    end
end
