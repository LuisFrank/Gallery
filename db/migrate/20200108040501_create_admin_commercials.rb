class CreateAdminCommercials < ActiveRecord::Migration[5.2]
  def change
    create_table :commercials do |t|
      t.string :name
      t.string :description
      t.integer :order
      t.boolean :show
      t.boolean :active

      t.timestamps
    end
  end
end