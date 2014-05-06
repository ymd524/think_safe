require 'test_helper'

class RsesControllerTest < ActionController::TestCase
  setup do
    @rse = rses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rse" do
    assert_difference('Rsis.count') do
      post :create, :rse => @rse.attributes
    end

    assert_redirected_to rse_path(assigns(:rse))
  end

  test "should show rse" do
    get :show, :id => @rse.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rse.to_param
    assert_response :success
  end

  test "should update rse" do
    put :update, :id => @rse.to_param, :rse => @rse.attributes
    assert_redirected_to rse_path(assigns(:rse))
  end

  test "should destroy rse" do
    assert_difference('Rsis.count', -1) do
      delete :destroy, :id => @rse.to_param
    end

    assert_redirected_to rses_path
  end
end
