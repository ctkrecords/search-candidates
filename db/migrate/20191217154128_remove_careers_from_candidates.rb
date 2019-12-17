class RemoveCareersFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :careers, :string
  end
end
