class ChangeRatingToBeFloatInMovies < ActiveRecord::Migration[6.1]
  def up
    change_column :movies, :rating, :float
  end

  def down
    change_column :movies, :rating, :integer
  end
end
