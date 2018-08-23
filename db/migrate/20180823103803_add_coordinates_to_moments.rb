class AddCoordinatesToMoments < ActiveRecord::Migration[5.2]
  def change
    add_column :moments, :latitude, :float
    add_column :moments, :longitude, :float
  end
end
