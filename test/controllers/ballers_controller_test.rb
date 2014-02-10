require 'test_helper'

class BallersControllerTest < ActionController::TestCase
  setup do
    @baller = ballers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ballers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baller" do
    assert_difference('Baller.count') do
      post :create, baller: { active: @baller.active, email: @baller.email, name: @baller.name, phone: @baller.phone }
    end

    assert_redirected_to baller_path(assigns(:baller))
  end

  test "should show baller" do
    get :show, id: @baller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baller
    assert_response :success
  end

  test "should update baller" do
    patch :update, id: @baller, baller: { active: @baller.active, email: @baller.email, name: @baller.name, phone: @baller.phone }
    assert_redirected_to baller_path(assigns(:baller))
  end

  test "should destroy baller" do
    assert_difference('Baller.count', -1) do
      delete :destroy, id: @baller
    end

    assert_redirected_to ballers_path
  end
end
