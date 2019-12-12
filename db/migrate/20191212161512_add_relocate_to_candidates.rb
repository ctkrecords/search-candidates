class AddRelocateToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :relocate, :string
  end
end
