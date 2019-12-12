class AddLanguagesToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :languages, :string
  end
end
