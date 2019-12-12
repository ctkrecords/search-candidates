class AddStatusToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :status, :string
  end
end
