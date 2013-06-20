require 'test_helper'

class EditsubjsControllerTest < ActionController::TestCase
  setup do
    @editsubj = editsubjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:editsubjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create editsubj" do
    assert_difference('Editsubj.count') do
      post :create, :editsubj => @editsubj.attributes
    end

    assert_redirected_to editsubj_path(assigns(:editsubj))
  end

  test "should show editsubj" do
    get :show, :id => @editsubj.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @editsubj.to_param
    assert_response :success
  end

  test "should update editsubj" do
    put :update, :id => @editsubj.to_param, :editsubj => @editsubj.attributes
    assert_redirected_to editsubj_path(assigns(:editsubj))
  end

  test "should destroy editsubj" do
    assert_difference('Editsubj.count', -1) do
      delete :destroy, :id => @editsubj.to_param
    end

    assert_redirected_to editsubjs_path
  end
end
