require 'test_helper'

class ScriptsControllerTest < ActionController::TestCase
  setup do
    @script = scripts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scripts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create script" do
    assert_difference('Script.count') do
      post :create, script: { notes: @script.notes, project: @script.project, step1: @script.step1, step2: @script.step2, step3: @script.step3, step4: @script.step4, step5: @script.step5, user_id: @script.user_id, email: @script.email}
    end

    assert_redirected_to script_path(assigns(:script))
  end

  test "should show script" do
    get :show, id: @script
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @script
    assert_response :success
  end

  test "should update script" do
    patch :update, id: @script, script: { notes: @script.notes, project: @script.project, step1: @script.step1, step2: @script.step2, step3: @script.step3, step4: @script.step4, step5: @script.step5, user_id: @script.user_id, email: @script.email}
    assert_redirected_to script_path(assigns(:script))
  end

  test "should destroy script" do
    assert_difference('Script.count', -1) do
      delete :destroy, id: @script
    end

    assert_redirected_to scripts_path
  end
end
