require 'test_helper'

class BloodStatusesControllerTest < ActionController::TestCase
  setup do
    @blood_status = blood_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blood_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood_status" do
    assert_difference('BloodStatus.count') do
      post :create, blood_status: { character_id: @blood_status.character_id, kind: @blood_status.kind }
    end

    assert_redirected_to blood_status_path(assigns(:blood_status))
  end

  test "should show blood_status" do
    get :show, id: @blood_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blood_status
    assert_response :success
  end

  test "should update blood_status" do
    patch :update, id: @blood_status, blood_status: { character_id: @blood_status.character_id, kind: @blood_status.kind }
    assert_redirected_to blood_status_path(assigns(:blood_status))
  end

  test "should destroy blood_status" do
    assert_difference('BloodStatus.count', -1) do
      delete :destroy, id: @blood_status
    end

    assert_redirected_to blood_statuses_path
  end
end
