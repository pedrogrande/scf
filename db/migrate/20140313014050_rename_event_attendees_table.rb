class RenameEventAttendeesTable < ActiveRecord::Migration
  def change
  	rename_table :event_attendees, :event_registrations
  end
end
