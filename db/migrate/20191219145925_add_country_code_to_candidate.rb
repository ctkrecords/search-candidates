class AddCountryCodeToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :country_code, :string
  end
end
