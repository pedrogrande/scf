require 'test_helper'

class ProgrammeUnitsControllerTest < ActionController::TestCase
  setup do
    @programme_unit = programme_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programme_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programme_unit" do
    assert_difference('ProgrammeUnit.count') do
      post :create, programme_unit: { programme_id: @programme_unit.programme_id, unit_id: @programme_unit.unit_id }
    end

    assert_redirected_to programme_unit_path(assigns(:programme_unit))
  end

  test "should show programme_unit" do
    get :show, id: @programme_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programme_unit
    assert_response :success
  end

  test "should update programme_unit" do
    patch :update, id: @programme_unit, programme_unit: { programme_id: @programme_unit.programme_id, unit_id: @programme_unit.unit_id }
    assert_redirected_to programme_unit_path(assigns(:programme_unit))
  end

  test "should destroy programme_unit" do
    assert_difference('ProgrammeUnit.count', -1) do
      delete :destroy, id: @programme_unit
    end

    assert_redirected_to programme_units_path
  end
end
