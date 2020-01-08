class AddPhotoToCommercials < ActiveRecord::Migration[5.2]
  def change
    add_column :commercials, :photo, :string
  end
end
