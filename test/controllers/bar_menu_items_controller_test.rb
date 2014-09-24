require 'test_helper'

class BarMenuItemsControllerTest < ActionController::TestCase
  setup do
    @bar_menu_item = bar_menu_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bar_menu_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bar_menu_item" do
    assert_difference('BarMenuItem.count') do
      post :create, bar_menu_item: { name: @bar_menu_item.name, price: @bar_menu_item.price }
    end

    assert_redirected_to bar_menu_item_path(assigns(:bar_menu_item))
  end

  test "should show bar_menu_item" do
    get :show, id: @bar_menu_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bar_menu_item
    assert_response :success
  end

  test "should update bar_menu_item" do
    patch :update, id: @bar_menu_item, bar_menu_item: { name: @bar_menu_item.name, price: @bar_menu_item.price }
    assert_redirected_to bar_menu_item_path(assigns(:bar_menu_item))
  end

  test "should destroy bar_menu_item" do
    assert_difference('BarMenuItem.count', -1) do
      delete :destroy, id: @bar_menu_item
    end

    assert_redirected_to bar_menu_items_path
  end
end
