class AdminController < ApplicationController
  def index
  	@users = User.all
  	@user = current_user
  	@events = Event.all
  	@enquiries = Enquiry.all
  	@consultations = Consultation.all
  	@testimonials = Testimonial.all
  	@testimonial_questions = TestimonialQuestion.all
  	@posts = Post.all
  	@post_categories = Category.all
  	@skills = Skill.all
  end
end
