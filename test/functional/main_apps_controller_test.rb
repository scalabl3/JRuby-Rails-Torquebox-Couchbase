require 'test_helper'

class MainAppsControllerTest < ActionController::TestCase
  setup do
    @main_app = main_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_app" do
    assert_difference('MainApp.count') do
      post :create, main_app: { index: @main_app.index }
    end

    assert_redirected_to main_app_path(assigns(:main_app))
  end

  test "should show main_app" do
    get :show, id: @main_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_app
    assert_response :success
  end

  test "should update main_app" do
    put :update, id: @main_app, main_app: { index: @main_app.index }
    assert_redirected_to main_app_path(assigns(:main_app))
  end

  test "should destroy main_app" do
    assert_difference('MainApp.count', -1) do
      delete :destroy, id: @main_app
    end

    assert_redirected_to main_apps_path
  end
end
