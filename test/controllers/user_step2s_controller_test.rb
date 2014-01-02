require 'test_helper'

class UserStep2sControllerTest < ActionController::TestCase
  setup do
    @user_step2 = user_step2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_step2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_step2" do
    assert_difference('UserStep2.count') do
      post :create, user_step2: { data: @user_step2.data, source_info: @user_step2.source_info, source_location: @user_step2.source_location, source_type: @user_step2.source_type }
    end

    assert_redirected_to user_step2_path(assigns(:user_step2))
  end

  test "should show user_step2" do
    get :show, id: @user_step2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_step2
    assert_response :success
  end

  test "should update user_step2" do
    patch :update, id: @user_step2, user_step2: { data: @user_step2.data, source_info: @user_step2.source_info, source_location: @user_step2.source_location, source_type: @user_step2.source_type }
    assert_redirected_to user_step2_path(assigns(:user_step2))
  end

  test "should destroy user_step2" do
    assert_difference('UserStep2.count', -1) do
      delete :destroy, id: @user_step2
    end

    assert_redirected_to user_step2s_path
  end
end
