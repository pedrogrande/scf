class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.references :user, index: true
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end
end
