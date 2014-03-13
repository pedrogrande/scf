class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|
      t.references :user, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
