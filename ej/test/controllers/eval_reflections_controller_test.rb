require 'test_helper'

class EvalReflectionsControllerTest < ActionController::TestCase
  setup do
    @eval_reflection = eval_reflections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eval_reflections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eval_reflection" do
    assert_difference('EvalReflection.count') do
      post :create, eval_reflection: {  }
    end

    assert_redirected_to eval_reflection_path(assigns(:eval_reflection))
  end

  test "should show eval_reflection" do
    get :show, id: @eval_reflection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eval_reflection
    assert_response :success
  end

  test "should update eval_reflection" do
    patch :update, id: @eval_reflection, eval_reflection: {  }
    assert_redirected_to eval_reflection_path(assigns(:eval_reflection))
  end

  test "should destroy eval_reflection" do
    assert_difference('EvalReflection.count', -1) do
      delete :destroy, id: @eval_reflection
    end

    assert_redirected_to eval_reflections_path
  end
end
