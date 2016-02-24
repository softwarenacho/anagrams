class CreateWords < ActiveRecord::Migration
  def change
      create_table :words do |t|
      # Completa con las columnas que necesites
      t.string :words
      t.string :canonical
      t.timestamps null: false
    end
  end
end
