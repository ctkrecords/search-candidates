class RemoveSkillsFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :skills, :string
  end
end
