class Testimonial < ActiveRecord::Base
  belongs_to :user
  has_many :testimonial_answers
  has_many :testimonial_questions, through: :testimonial_answers
end
