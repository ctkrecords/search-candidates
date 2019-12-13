class AddDetailsToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :specific_benefit, :string
    add_column :candidates, :general_benefits, :string
    add_column :candidates, :general_comments, :text
    add_column :candidates, :address, :text
    add_column :candidates, :conditions_to_move, :text
    add_column :candidates, :telephone, :string
    add_column :candidates, :interview_date, :date
    add_column :candidates, :nationality, :string
  end
end
