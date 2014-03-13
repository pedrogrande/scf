class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.references :user, index: true
      t.integer :admin_id
      t.string :interaction_type
      t.datetime :occurred

      t.timestamps
    end
  end
end
