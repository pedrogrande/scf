json.array!(@testimonial_questions) do |testimonial_question|
  json.extract! testimonial_question, :id, :question, :priority
  json.url testimonial_question_url(testimonial_question, format: :json)
end
