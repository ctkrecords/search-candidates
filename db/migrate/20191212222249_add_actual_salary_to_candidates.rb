class AddActualSalaryToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :actual_salary, :money
  end
end
