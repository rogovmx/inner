require 'test_helper'

class ForumrootsControllerTest < ActionController::TestCase
  setup do
    @forumroot = forumroots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forumroots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forumroot" do
    assert_difference('Forumroot.count') do
      post :create, :forumroot => @forumroot.attributes
    end

    assert_redirected_to forumroot_path(assigns(:forumroot))
  end

  test "should show forumroot" do
    get :show, :id => @forumroot.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @forumroot.to_param
    assert_response :success
  end

  test "should update forumroot" do
    put :update, :id => @forumroot.to_param, :forumroot => @forumroot.attributes
    assert_redirected_to forumroot_path(assigns(:forumroot))
  end

  test "should destroy forumroot" do
    assert_difference('Forumroot.count', -1) do
      delete :destroy, :id => @forumroot.to_param
    end

    assert_redirected_to forumroots_path
  end
end
