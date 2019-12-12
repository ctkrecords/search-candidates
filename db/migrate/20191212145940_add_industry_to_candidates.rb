class AddIndustryToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :industry, :string
  end
end
