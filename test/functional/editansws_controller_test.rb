require 'test_helper'

class EditanswsControllerTest < ActionController::TestCase
  setup do
    @editansw = editansws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:editansws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create editansw" do
    assert_difference('Editansw.count') do
      post :create, :editansw => @editansw.attributes
    end

    assert_redirected_to editansw_path(assigns(:editansw))
  end

  test "should show editansw" do
    get :show, :id => @editansw.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @editansw.to_param
    assert_response :success
  end

  test "should update editansw" do
    put :update, :id => @editansw.to_param, :editansw => @editansw.attributes
    assert_redirected_to editansw_path(assigns(:editansw))
  end

  test "should destroy editansw" do
    assert_difference('Editansw.count', -1) do
      delete :destroy, :id => @editansw.to_param
    end

    assert_redirected_to editansws_path
  end
end
