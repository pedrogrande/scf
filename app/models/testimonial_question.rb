class TestimonialQuestion < ActiveRecord::Base
	has_many :testimonial_answers
  	has_many :testimonials, through: :testimonial_answers
end
