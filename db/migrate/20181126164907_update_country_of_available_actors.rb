class UpdateCountryOfAvailableActors < ActiveRecord::Migration[5.0]
  def change
  	  	change_column_default :actors, :country, from: 'India', to: 'US'
  end
end
