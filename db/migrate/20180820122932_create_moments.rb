class CreateMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :moments do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :location
      t.integer :level
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
