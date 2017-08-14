class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :title
      t.integer :capacity
      t.string :music_type
      t.integer :price
      t.datetime :occurs_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
