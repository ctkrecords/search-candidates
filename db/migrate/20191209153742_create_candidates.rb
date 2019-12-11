class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :cellphone
      t.date :birth_date

      t.timestamps
    end
  end
end