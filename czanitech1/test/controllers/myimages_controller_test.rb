require 'test_helper'

class MyimagesControllerTest < ActionController::TestCase
  setup do
    @myimage = myimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myimage" do
    assert_difference('Myimage.count') do
      post :create, myimage: { image_link: @myimage.image_link, image_name: @myimage.image_name }
    end

    assert_redirected_to myimage_path(assigns(:myimage))
  end

  test "should show myimage" do
    get :show, id: @myimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myimage
    assert_response :success
  end

  test "should update myimage" do
    patch :update, id: @myimage, myimage: { image_link: @myimage.image_link, image_name: @myimage.image_name }
    assert_redirected_to myimage_path(assigns(:myimage))
  end

  test "should destroy myimage" do
    assert_difference('Myimage.count', -1) do
      delete :destroy, id: @myimage
    end

    assert_redirected_to myimages_path
  end
end
