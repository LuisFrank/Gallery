class CreateAdminBiographies < ActiveRecord::Migration[5.2]
  def change
    create_table :biographies do |t|
      t.text :message
      t.boolean :visible

      t.timestamps
    end
  end
end
