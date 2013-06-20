require 'test_helper'

class Status1sControllerTest < ActionController::TestCase
  setup do
    @status1 = status1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status1" do
    assert_difference('Status1.count') do
      post :create, :status1 => @status1.attributes
    end

    assert_redirected_to status1_path(assigns(:status1))
  end

  test "should show status1" do
    get :show, :id => @status1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @status1.to_param
    assert_response :success
  end

  test "should update status1" do
    put :update, :id => @status1.to_param, :status1 => @status1.attributes
    assert_redirected_to status1_path(assigns(:status1))
  end

  test "should destroy status1" do
    assert_difference('Status1.count', -1) do
      delete :destroy, :id => @status1.to_param
    end

    assert_redirected_to status1s_path
  end
end
