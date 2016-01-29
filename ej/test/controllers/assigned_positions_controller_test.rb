require 'test_helper'

class AssignedPositionsControllerTest < ActionController::TestCase
  setup do
    @assigned_position = assigned_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assigned_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assigned_position" do
    assert_difference('AssignedPosition.count') do
      post :create, assigned_position: {  }
    end

    assert_redirected_to assigned_position_path(assigns(:assigned_position))
  end

  test "should show assigned_position" do
    get :show, id: @assigned_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assigned_position
    assert_response :success
  end

  test "should update assigned_position" do
    patch :update, id: @assigned_position, assigned_position: {  }
    assert_redirected_to assigned_position_path(assigns(:assigned_position))
  end

  test "should destroy assigned_position" do
    assert_difference('AssignedPosition.count', -1) do
      delete :destroy, id: @assigned_position
    end

    assert_redirected_to assigned_positions_path
  end
end
