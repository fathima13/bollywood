class AddDirectorNameToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :director_name, :string
  end
end
