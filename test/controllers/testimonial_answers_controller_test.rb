require 'test_helper'

class TestimonialAnswersControllerTest < ActionController::TestCase
  setup do
    @testimonial_answer = testimonial_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testimonial_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testimonial_answer" do
    assert_difference('TestimonialAnswer.count') do
      post :create, testimonial_answer: { answer: @testimonial_answer.answer, testimonial_id: @testimonial_answer.testimonial_id, testimonial_question_id: @testimonial_answer.testimonial_question_id }
    end

    assert_redirected_to testimonial_answer_path(assigns(:testimonial_answer))
  end

  test "should show testimonial_answer" do
    get :show, id: @testimonial_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testimonial_answer
    assert_response :success
  end

  test "should update testimonial_answer" do
    patch :update, id: @testimonial_answer, testimonial_answer: { answer: @testimonial_answer.answer, testimonial_id: @testimonial_answer.testimonial_id, testimonial_question_id: @testimonial_answer.testimonial_question_id }
    assert_redirected_to testimonial_answer_path(assigns(:testimonial_answer))
  end

  test "should destroy testimonial_answer" do
    assert_difference('TestimonialAnswer.count', -1) do
      delete :destroy, id: @testimonial_answer
    end

    assert_redirected_to testimonial_answers_path
  end
end
