require 'test_helper'

class SmasControllerTest < ActionController::TestCase
  setup do
    @sma = smas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sma" do
    assert_difference('Sma.count') do
      post :create, :sma => @sma.attributes
    end

    assert_redirected_to sma_path(assigns(:sma))
  end

  test "should show sma" do
    get :show, :id => @sma.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sma.to_param
    assert_response :success
  end

  test "should update sma" do
    put :update, :id => @sma.to_param, :sma => @sma.attributes
    assert_redirected_to sma_path(assigns(:sma))
  end

  test "should destroy sma" do
    assert_difference('Sma.count', -1) do
      delete :destroy, :id => @sma.to_param
    end

    assert_redirected_to smas_path
  end
end
