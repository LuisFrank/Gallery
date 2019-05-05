class CreateCyclorosses < ActiveRecord::Migration[5.2]
  def change
    create_table :cyclorosses do |t|
      t.string :name
      t.string :description
      t.boolean :show

      t.timestamps
    end
  end
end
