class AddActualCompanyToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :actual_company, :string
  end
end
