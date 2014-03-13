class Interaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :event_registration
  belongs_to :enquiry
  belongs_to :testimonial
  belongs_to :consultation
  
end
