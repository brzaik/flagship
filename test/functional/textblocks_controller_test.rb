require 'test_helper'

class TextblocksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textblocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textblock" do
    assert_difference('Textblock.count') do
      post :create, :textblock => { }
    end

    assert_redirected_to textblock_path(assigns(:textblock))
  end

  test "should show textblock" do
    get :show, :id => textblocks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => textblocks(:one).to_param
    assert_response :success
  end

  test "should update textblock" do
    put :update, :id => textblocks(:one).to_param, :textblock => { }
    assert_redirected_to textblock_path(assigns(:textblock))
  end

  test "should destroy textblock" do
    assert_difference('Textblock.count', -1) do
      delete :destroy, :id => textblocks(:one).to_param
    end

    assert_redirected_to textblocks_path
  end
end
