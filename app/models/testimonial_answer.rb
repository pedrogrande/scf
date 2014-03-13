class TestimonialAnswer < ActiveRecord::Base
  belongs_to :testimonial_question
  belongs_to :testimonial
end
