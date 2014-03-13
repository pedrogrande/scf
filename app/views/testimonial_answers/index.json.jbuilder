json.array!(@testimonial_answers) do |testimonial_answer|
  json.extract! testimonial_answer, :id, :testimonial_question_id, :testimonial_id, :answer
  json.url testimonial_answer_url(testimonial_answer, format: :json)
end
