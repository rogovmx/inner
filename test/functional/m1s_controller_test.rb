require 'test_helper'

class M1sControllerTest < ActionController::TestCase
  setup do
    @m1 = m1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m1" do
    assert_difference('M1.count') do
      post :create, :m1 => @m1.attributes
    end

    assert_redirected_to m1_path(assigns(:m1))
  end

  test "should show m1" do
    get :show, :id => @m1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m1.to_param
    assert_response :success
  end

  test "should update m1" do
    put :update, :id => @m1.to_param, :m1 => @m1.attributes
    assert_redirected_to m1_path(assigns(:m1))
  end

  test "should destroy m1" do
    assert_difference('M1.count', -1) do
      delete :destroy, :id => @m1.to_param
    end

    assert_redirected_to m1s_path
  end
end
