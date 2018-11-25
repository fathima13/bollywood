class AddCountryToActors < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :country, :string
  end
end
