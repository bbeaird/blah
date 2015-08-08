require 'test_helper'

class DinnerCookersControllerTest < ActionController::TestCase
  setup do
    @dinner_cooker = dinner_cookers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinner_cookers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dinner_cooker" do
    assert_difference('DinnerCooker.count') do
      post :create, dinner_cooker: { name: @dinner_cooker.name }
    end

    assert_redirected_to dinner_cooker_path(assigns(:dinner_cooker))
  end

  test "should show dinner_cooker" do
    get :show, id: @dinner_cooker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dinner_cooker
    assert_response :success
  end

  test "should update dinner_cooker" do
    patch :update, id: @dinner_cooker, dinner_cooker: { name: @dinner_cooker.name }
    assert_redirected_to dinner_cooker_path(assigns(:dinner_cooker))
  end

  test "should destroy dinner_cooker" do
    assert_difference('DinnerCooker.count', -1) do
      delete :destroy, id: @dinner_cooker
    end

    assert_redirected_to dinner_cookers_path
  end
end
