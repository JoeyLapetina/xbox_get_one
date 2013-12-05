require 'test_helper'

class CheckersControllerTest < ActionController::TestCase
  setup do
    @checker = checkers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checkers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checker" do
    assert_difference('Checker.count') do
      post :create, checker: { item: @checker.item, name: @checker.name, site: @checker.site, url: @checker.url }
    end

    assert_redirected_to checker_path(assigns(:checker))
  end

  test "should show checker" do
    get :show, id: @checker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checker
    assert_response :success
  end

  test "should update checker" do
    put :update, id: @checker, checker: { item: @checker.item, name: @checker.name, site: @checker.site, url: @checker.url }
    assert_redirected_to checker_path(assigns(:checker))
  end

  test "should destroy checker" do
    assert_difference('Checker.count', -1) do
      delete :destroy, id: @checker
    end

    assert_redirected_to checkers_path
  end
end
