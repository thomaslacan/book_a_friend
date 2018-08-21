class RemoveLevelFromMoments < ActiveRecord::Migration[5.2]
  def change
    change_column :moments, :level, :string
  end
end
