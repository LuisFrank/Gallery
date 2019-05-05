class AddPhotoToCyclorosses < ActiveRecord::Migration[5.2]
  def change
    add_column :cyclorosses, :photo, :string
  end
end
