class AddComparativeChartToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :comparative_chart, :text
  end
end
