class CreateEmployeesTicketsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :employees, :tickets
  end
end
