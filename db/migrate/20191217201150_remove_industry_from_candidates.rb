class RemoveIndustryFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :industry, :string
  end
end
