class CreateIndustries < ActiveRecord::Migration[5.2]
  def change
    create_table :industries do |t|
      t.string :name
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
