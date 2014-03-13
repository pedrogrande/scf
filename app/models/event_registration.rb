class EventRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_one :interaction
end
