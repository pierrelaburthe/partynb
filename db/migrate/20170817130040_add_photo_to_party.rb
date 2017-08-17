class AddPhotoToParty < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :photo, :string
  end
end
