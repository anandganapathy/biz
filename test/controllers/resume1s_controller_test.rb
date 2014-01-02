require 'test_helper'

class Resume1sControllerTest < ActionController::TestCase
  setup do
    @resume1 = resume1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resume1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resume1" do
    assert_difference('Resume1.count') do
      post :create, resume1: {  }
    end

    assert_redirected_to resume1_path(assigns(:resume1))
  end

  test "should show resume1" do
    get :show, id: @resume1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resume1
    assert_response :success
  end

  test "should update resume1" do
    patch :update, id: @resume1, resume1: {  }
    assert_redirected_to resume1_path(assigns(:resume1))
  end

  test "should destroy resume1" do
    assert_difference('Resume1.count', -1) do
      delete :destroy, id: @resume1
    end

    assert_redirected_to resume1s_path
  end
end
