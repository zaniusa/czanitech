require 'test_helper'

class CustomerchatsControllerTest < ActionController::TestCase
  setup do
    @customerchat = customerchats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customerchats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customerchat" do
    assert_difference('Customerchat.count') do
      post :create, customerchat: { chataux: @customerchat.chataux, chattext: @customerchat.chattext, producer_id: @customerchat.producer_id, user_id: @customerchat.user_id }
    end

    assert_redirected_to customerchat_path(assigns(:customerchat))
  end

  test "should show customerchat" do
    get :show, id: @customerchat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customerchat
    assert_response :success
  end

  test "should update customerchat" do
    patch :update, id: @customerchat, customerchat: { chataux: @customerchat.chataux, chattext: @customerchat.chattext, producer_id: @customerchat.producer_id, user_id: @customerchat.user_id }
    assert_redirected_to customerchat_path(assigns(:customerchat))
  end

  test "should destroy customerchat" do
    assert_difference('Customerchat.count', -1) do
      delete :destroy, id: @customerchat
    end

    assert_redirected_to customerchats_path
  end
end
