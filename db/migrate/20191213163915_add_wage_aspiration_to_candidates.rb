class AddWageAspirationToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :wage_aspiration, :money
  end
end
