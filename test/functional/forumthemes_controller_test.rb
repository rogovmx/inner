require 'test_helper'

class ForumthemesControllerTest < ActionController::TestCase
  setup do
    @forumtheme = forumthemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forumthemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forumtheme" do
    assert_difference('Forumtheme.count') do
      post :create, :forumtheme => @forumtheme.attributes
    end

    assert_redirected_to forumtheme_path(assigns(:forumtheme))
  end

  test "should show forumtheme" do
    get :show, :id => @forumtheme.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @forumtheme.to_param
    assert_response :success
  end

  test "should update forumtheme" do
    put :update, :id => @forumtheme.to_param, :forumtheme => @forumtheme.attributes
    assert_redirected_to forumtheme_path(assigns(:forumtheme))
  end

  test "should destroy forumtheme" do
    assert_difference('Forumtheme.count', -1) do
      delete :destroy, :id => @forumtheme.to_param
    end

    assert_redirected_to forumthemes_path
  end
end
