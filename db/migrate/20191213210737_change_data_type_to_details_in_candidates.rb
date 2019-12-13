class ChangeDataTypeToDetailsInCandidates < ActiveRecord::Migration[5.2]
  def change
    change_column :candidates, :specific_benefit, :text
    change_column :candidates, :general_benefits, :text 
  end
end
