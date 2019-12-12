class AddEmailToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :email, :string
  end
end
