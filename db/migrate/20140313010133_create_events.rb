class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :tagline
      t.text :about
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end
end
