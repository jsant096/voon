require 'test_helper'

class UsersInterestsLinksControllerTest < ActionController::TestCase
  setup do
    @users_interests_link = users_interests_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_interests_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_interests_link" do
    assert_difference('UsersInterestsLink.count') do
      post :create, users_interests_link: {  }
    end

    assert_redirected_to users_interests_link_path(assigns(:users_interests_link))
  end

  test "should show users_interests_link" do
    get :show, id: @users_interests_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_interests_link
    assert_response :success
  end

  test "should update users_interests_link" do
    patch :update, id: @users_interests_link, users_interests_link: {  }
    assert_redirected_to users_interests_link_path(assigns(:users_interests_link))
  end

  test "should destroy users_interests_link" do
    assert_difference('UsersInterestsLink.count', -1) do
      delete :destroy, id: @users_interests_link
    end

    assert_redirected_to users_interests_links_path
  end
end
