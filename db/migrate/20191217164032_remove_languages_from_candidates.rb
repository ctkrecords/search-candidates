class RemoveLanguagesFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :languages, :string
  end
end
