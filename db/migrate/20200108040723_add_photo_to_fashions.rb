class AddPhotoToFashions < ActiveRecord::Migration[5.2]
  def change
    add_column :fashions, :photo, :string
  end
end
