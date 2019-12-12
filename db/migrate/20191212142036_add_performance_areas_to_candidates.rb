class AddPerformanceAreasToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :performance_areas, :string
  end
end
