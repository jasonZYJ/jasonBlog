require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { avatar_file_name: @user.avatar_file_name, bio: @user.bio, email: @user.email, last_logined_at: @user.last_logined_at, location: @user.location, name: @user.name, password: @user.password, qq: @user.qq, state: @user.state, tagline: @user.tagline, website: @user.website }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { avatar_file_name: @user.avatar_file_name, bio: @user.bio, email: @user.email, last_logined_at: @user.last_logined_at, location: @user.location, name: @user.name, password: @user.password, qq: @user.qq, state: @user.state, tagline: @user.tagline, website: @user.website }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end