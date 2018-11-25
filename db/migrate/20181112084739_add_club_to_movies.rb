class AddClubToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :club, :boolean
  end
end
