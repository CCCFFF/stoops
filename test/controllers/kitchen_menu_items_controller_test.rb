require 'test_helper'

class KitchenMenuItemsControllerTest < ActionController::TestCase
  setup do
    @kitchen_menu_item = kitchen_menu_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kitchen_menu_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kitchen_menu_item" do
    assert_difference('KitchenMenuItem.count') do
      post :create, kitchen_menu_item: { name: @kitchen_menu_item.name, price: @kitchen_menu_item.price }
    end

    assert_redirected_to kitchen_menu_item_path(assigns(:kitchen_menu_item))
  end

  test "should show kitchen_menu_item" do
    get :show, id: @kitchen_menu_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kitchen_menu_item
    assert_response :success
  end

  test "should update kitchen_menu_item" do
    patch :update, id: @kitchen_menu_item, kitchen_menu_item: { name: @kitchen_menu_item.name, price: @kitchen_menu_item.price }
    assert_redirected_to kitchen_menu_item_path(assigns(:kitchen_menu_item))
  end

  test "should destroy kitchen_menu_item" do
    assert_difference('KitchenMenuItem.count', -1) do
      delete :destroy, id: @kitchen_menu_item
    end

    assert_redirected_to kitchen_menu_items_path
  end
end
