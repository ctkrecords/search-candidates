class RemoveEducationLevelFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :education_level, :string
  end
end
