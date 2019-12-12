class AddCivilStatusToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :civil_status, :string
  end
end
