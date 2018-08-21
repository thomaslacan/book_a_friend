class AddDetailsToMoments < ActiveRecord::Migration[5.2]
  def change
    add_column :moments, :activity, :string
    add_column :moments, :category, :string
  end
end
