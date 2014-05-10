require 'test_helper'

class SendmessagesControllerTest < ActionController::TestCase
  setup do
    @sendmessage = sendmessages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sendmessages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sendmessage" do
    assert_difference('Sendmessage.count') do
      post :create, sendmessage: { email: @sendmessage.email, message: @sendmessage.message, name: @sendmessage.name, user_id: @sendmessage.user_id }
    end

    assert_redirected_to sendmessage_path(assigns(:sendmessage))
  end

  test "should show sendmessage" do
    get :show, id: @sendmessage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sendmessage
    assert_response :success
  end

  test "should update sendmessage" do
    patch :update, id: @sendmessage, sendmessage: { email: @sendmessage.email, message: @sendmessage.message, name: @sendmessage.name, user_id: @sendmessage.user_id }
    assert_redirected_to sendmessage_path(assigns(:sendmessage))
  end

  test "should destroy sendmessage" do
    assert_difference('Sendmessage.count', -1) do
      delete :destroy, id: @sendmessage
    end

    assert_redirected_to sendmessages_path
  end
end
