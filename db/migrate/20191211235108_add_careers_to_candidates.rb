class AddCareersToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :careers, :string
  end
end
