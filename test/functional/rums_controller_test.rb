require 'test_helper'

class RumsControllerTest < ActionController::TestCase
  setup do
    @rum = rums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rum" do
    assert_difference('Rum.count') do
      post :create, rum: @rum.attributes
    end

    assert_redirected_to rum_path(assigns(:rum))
  end

  test "should show rum" do
    get :show, id: @rum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rum.to_param
    assert_response :success
  end

  test "should update rum" do
    put :update, id: @rum.to_param, rum: @rum.attributes
    assert_redirected_to rum_path(assigns(:rum))
  end

  test "should destroy rum" do
    assert_difference('Rum.count', -1) do
      delete :destroy, id: @rum.to_param
    end

    assert_redirected_to rums_path
  end
end
