class AddPositionToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :position, :string
  end
end
