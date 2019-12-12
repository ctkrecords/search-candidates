class AddRecruitmentSourceToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :recruitment_source, :string
  end
end
