require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get new_order" do
    get :new_order
    assert_response :success
  end

  test "should get new_create" do
    get :new_create
    assert_response :success
  end

end
