class CreateTestimonialQuestions < ActiveRecord::Migration
  def change
    create_table :testimonial_questions do |t|
      t.string :question
      t.integer :priority

      t.timestamps
    end
  end
end
