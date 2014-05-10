require 'test_helper'

class MovielinksControllerTest < ActionController::TestCase
  setup do
    @movielink = movielinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movielinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movielink" do
    assert_difference('Movielink.count') do
      post :create, movielink: { moviedescription: @movielink.moviedescription, movielink: @movielink.movielink, moviename: @movielink.moviename }
    end

    assert_redirected_to movielink_path(assigns(:movielink))
  end

  test "should show movielink" do
    get :show, id: @movielink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movielink
    assert_response :success
  end

  test "should update movielink" do
    patch :update, id: @movielink, movielink: { moviedescription: @movielink.moviedescription, movielink: @movielink.movielink, moviename: @movielink.moviename }
    assert_redirected_to movielink_path(assigns(:movielink))
  end

  test "should destroy movielink" do
    assert_difference('Movielink.count', -1) do
      delete :destroy, id: @movielink
    end

    assert_redirected_to movielinks_path
  end
end
