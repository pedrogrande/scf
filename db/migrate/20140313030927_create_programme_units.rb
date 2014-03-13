class CreateProgrammeUnits < ActiveRecord::Migration
  def change
    create_table :programme_units do |t|
      t.references :programme, index: true
      t.references :unit, index: true

      t.timestamps
    end
  end
end
