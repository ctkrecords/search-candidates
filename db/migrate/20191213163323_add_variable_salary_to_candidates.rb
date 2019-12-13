class AddVariableSalaryToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :variable_salary, :money
  end
end
