require 'test_helper'

class ConsultationsControllerTest < ActionController::TestCase
  setup do
    @consultation = consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultation" do
    assert_difference('Consultation.count') do
      post :create, consultation: { actions: @consultation.actions, comfirmed: @consultation.comfirmed, consultation_type: @consultation.consultation_type, date_time: @consultation.date_time, email: @consultation.email, length_in_minutes: @consultation.length_in_minutes, message: @consultation.message, name: @consultation.name, notes: @consultation.notes, phone: @consultation.phone, user_id: @consultation.user_id }
    end

    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should show consultation" do
    get :show, id: @consultation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultation
    assert_response :success
  end

  test "should update consultation" do
    patch :update, id: @consultation, consultation: { actions: @consultation.actions, comfirmed: @consultation.comfirmed, consultation_type: @consultation.consultation_type, date_time: @consultation.date_time, email: @consultation.email, length_in_minutes: @consultation.length_in_minutes, message: @consultation.message, name: @consultation.name, notes: @consultation.notes, phone: @consultation.phone, user_id: @consultation.user_id }
    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should destroy consultation" do
    assert_difference('Consultation.count', -1) do
      delete :destroy, id: @consultation
    end

    assert_redirected_to consultations_path
  end
end
