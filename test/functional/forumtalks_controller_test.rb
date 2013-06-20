require 'test_helper'

class ForumtalksControllerTest < ActionController::TestCase
  setup do
    @forumtalk = forumtalks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forumtalks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forumtalk" do
    assert_difference('Forumtalk.count') do
      post :create, :forumtalk => @forumtalk.attributes
    end

    assert_redirected_to forumtalk_path(assigns(:forumtalk))
  end

  test "should show forumtalk" do
    get :show, :id => @forumtalk.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @forumtalk.to_param
    assert_response :success
  end

  test "should update forumtalk" do
    put :update, :id => @forumtalk.to_param, :forumtalk => @forumtalk.attributes
    assert_redirected_to forumtalk_path(assigns(:forumtalk))
  end

  test "should destroy forumtalk" do
    assert_difference('Forumtalk.count', -1) do
      delete :destroy, :id => @forumtalk.to_param
    end

    assert_redirected_to forumtalks_path
  end
end
