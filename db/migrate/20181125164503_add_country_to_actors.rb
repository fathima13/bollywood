class AddCountryToActors < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :country, :string, :default=> 'US'
  end
end
