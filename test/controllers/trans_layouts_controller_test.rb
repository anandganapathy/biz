require 'test_helper'

class TransLayoutsControllerTest < ActionController::TestCase
  setup do
    @trans_layout = trans_layouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trans_layouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trans_layout" do
    assert_difference('TransLayout.count') do
      post :create, trans_layout: {  }
    end

    assert_redirected_to trans_layout_path(assigns(:trans_layout))
  end

  test "should show trans_layout" do
    get :show, id: @trans_layout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trans_layout
    assert_response :success
  end

  test "should update trans_layout" do
    patch :update, id: @trans_layout, trans_layout: {  }
    assert_redirected_to trans_layout_path(assigns(:trans_layout))
  end

  test "should destroy trans_layout" do
    assert_difference('TransLayout.count', -1) do
      delete :destroy, id: @trans_layout
    end

    assert_redirected_to trans_layouts_path
  end
end
