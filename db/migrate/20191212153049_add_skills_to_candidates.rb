class AddSkillsToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :skills, :string
  end
end
