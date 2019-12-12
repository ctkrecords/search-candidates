class AddRegionalCandidateToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :regional_candidate, :string
  end
end
