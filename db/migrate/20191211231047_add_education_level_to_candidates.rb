class AddEducationLevelToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :education_level, :string
  end
end
