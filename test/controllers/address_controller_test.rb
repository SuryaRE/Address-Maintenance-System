require 'test_helper'

class AddressControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get loginaction" do
    get :loginaction
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get signupaction" do
    get :signupaction
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get homeaction" do
    get :homeaction
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
