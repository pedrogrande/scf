class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :unit_type, index: true
      t.string :name
      t.string :tagline
      t.text :description
      t.integer :hours
      t.integer :points
      t.integer :difficulty
      t.boolean :online
      t.boolean :offline

      t.timestamps
    end
  end
end
