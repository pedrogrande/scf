require 'test_helper'

class TestimonialQuestionsControllerTest < ActionController::TestCase
  setup do
    @testimonial_question = testimonial_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testimonial_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testimonial_question" do
    assert_difference('TestimonialQuestion.count') do
      post :create, testimonial_question: { priority: @testimonial_question.priority, question: @testimonial_question.question }
    end

    assert_redirected_to testimonial_question_path(assigns(:testimonial_question))
  end

  test "should show testimonial_question" do
    get :show, id: @testimonial_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testimonial_question
    assert_response :success
  end

  test "should update testimonial_question" do
    patch :update, id: @testimonial_question, testimonial_question: { priority: @testimonial_question.priority, question: @testimonial_question.question }
    assert_redirected_to testimonial_question_path(assigns(:testimonial_question))
  end

  test "should destroy testimonial_question" do
    assert_difference('TestimonialQuestion.count', -1) do
      delete :destroy, id: @testimonial_question
    end

    assert_redirected_to testimonial_questions_path
  end
end
