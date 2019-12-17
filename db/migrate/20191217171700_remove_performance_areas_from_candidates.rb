class RemovePerformanceAreasFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :performance_areas, :string
  end
end
