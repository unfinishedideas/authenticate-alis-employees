class AddForeignKeyToEmployees < ActiveRecord::Migration[5.2]
    def change
        add_foreign_key :employees, :divisions
    end
end
