class Event < ActiveRecord::Base
	has_many :event_registrations
	has_many :users, through: :event_registrations
end
