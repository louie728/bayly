require 'test_helper'

class CartLinesControllerTest < ActionController::TestCase
  setup do
    @cart_line = cart_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_line" do
    assert_difference('CartLine.count') do
      post :create, cart_line: { cart_id: @cart_line.cart_id, item_id: @cart_line.item_id, note: @cart_line.note, price_in_cents: @cart_line.price_in_cents, qty: @cart_line.qty, status: @cart_line.status }
    end

    assert_redirected_to cart_line_path(assigns(:cart_line))
  end

  test "should show cart_line" do
    get :show, id: @cart_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart_line
    assert_response :success
  end

  test "should update cart_line" do
    patch :update, id: @cart_line, cart_line: { cart_id: @cart_line.cart_id, item_id: @cart_line.item_id, note: @cart_line.note, price_in_cents: @cart_line.price_in_cents, qty: @cart_line.qty, status: @cart_line.status }
    assert_redirected_to cart_line_path(assigns(:cart_line))
  end

  test "should destroy cart_line" do
    assert_difference('CartLine.count', -1) do
      delete :destroy, id: @cart_line
    end

    assert_redirected_to cart_lines_path
  end
end
