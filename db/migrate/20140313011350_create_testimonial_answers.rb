class CreateTestimonialAnswers < ActiveRecord::Migration
  def change
    create_table :testimonial_answers do |t|
      t.references :testimonial_question, index: true
      t.references :testimonial, index: true
      t.text :answer

      t.timestamps
    end
  end
end
