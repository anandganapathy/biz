require 'test_helper'

class TargetsControllerTest < ActionController::TestCase
  setup do
    @target = targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create target" do
    assert_difference('Target.count') do
      post :create, target: { data: @target.data, source_info: @target.source_info, source_location: @target.source_location, source_type: @target.source_type }
    end

    assert_redirected_to target_path(assigns(:target))
  end

  test "should show target" do
    get :show, id: @target
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @target
    assert_response :success
  end

  test "should update target" do
    patch :update, id: @target, target: { data: @target.data, source_info: @target.source_info, source_location: @target.source_location, source_type: @target.source_type }
    assert_redirected_to target_path(assigns(:target))
  end

  test "should destroy target" do
    assert_difference('Target.count', -1) do
      delete :destroy, id: @target
    end

    assert_redirected_to targets_path
  end
end
