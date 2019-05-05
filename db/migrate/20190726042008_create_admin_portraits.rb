class CreateAdminPortraits < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_portraits do |t|
      t.string :name
      t.string :description
      t.boolean :show
      t.integer :order

      t.timestamps
    end
  end
end
