class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.references :user, index: true
      t.string :name
      t.string :phone
      t.string :email
      t.text :message
      t.datetime :date_time
      t.integer :length_in_minutes
      t.boolean :comfirmed
      t.text :notes
      t.text :actions
      t.string :consultation_type

      t.timestamps
    end
  end
end
