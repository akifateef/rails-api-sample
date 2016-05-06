require 'test_helper'

class AtristsControllerTest < ActionController::TestCase
  setup do
    @atrist = atrists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atrists)
  end

  test "should create atrist" do
    assert_difference('Atrist.count') do
      post :create, atrist: {  }
    end

    assert_response 201
  end

  test "should show atrist" do
    get :show, id: @atrist
    assert_response :success
  end

  test "should update atrist" do
    put :update, id: @atrist, atrist: {  }
    assert_response 204
  end

  test "should destroy atrist" do
    assert_difference('Atrist.count', -1) do
      delete :destroy, id: @atrist
    end

    assert_response 204
  end
end
