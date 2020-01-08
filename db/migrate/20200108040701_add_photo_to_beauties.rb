class AddPhotoToBeauties < ActiveRecord::Migration[5.2]
  def change
    add_column :beauties, :photo, :string
  end
end
