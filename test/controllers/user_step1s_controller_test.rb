require 'test_helper'

class UserStep1sControllerTest < ActionController::TestCase
  setup do
    @user_step1 = user_step1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_step1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_step1" do
    assert_difference('UserStep1.count') do
      post :create, user_step1: { phase_name: @user_step1.phase_name, project_name: @user_step1.project_name, project_urls: @user_step1.project_urls, subject_area: @user_step1.subject_area }
    end

    assert_redirected_to user_step1_path(assigns(:user_step1))
  end

  test "should show user_step1" do
    get :show, id: @user_step1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_step1
    assert_response :success
  end

  test "should update user_step1" do
    patch :update, id: @user_step1, user_step1: { phase_name: @user_step1.phase_name, project_name: @user_step1.project_name, project_urls: @user_step1.project_urls, subject_area: @user_step1.subject_area }
    assert_redirected_to user_step1_path(assigns(:user_step1))
  end

  test "should destroy user_step1" do
    assert_difference('UserStep1.count', -1) do
      delete :destroy, id: @user_step1
    end

    assert_redirected_to user_step1s_path
  end
end
