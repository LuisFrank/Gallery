class AddPhotoToJewelries < ActiveRecord::Migration[5.2]
  def change
    add_column :jewelries, :photo, :string
  end
end
