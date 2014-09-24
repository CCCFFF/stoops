require 'test_helper'

class KitchenItemsControllerTest < ActionController::TestCase
  setup do
    @kitchen_item = kitchen_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kitchen_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kitchen_item" do
    assert_difference('KitchenItem.count') do
      post :create, kitchen_item: { kitchen_closeout: @kitchen_item.kitchen_closeout, kitchen_menu_item_id: @kitchen_item.kitchen_menu_item_id, ticket_id: @kitchen_item.ticket_id }
    end

    assert_redirected_to kitchen_item_path(assigns(:kitchen_item))
  end

  test "should show kitchen_item" do
    get :show, id: @kitchen_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kitchen_item
    assert_response :success
  end

  test "should update kitchen_item" do
    patch :update, id: @kitchen_item, kitchen_item: { kitchen_closeout: @kitchen_item.kitchen_closeout, kitchen_menu_item_id: @kitchen_item.kitchen_menu_item_id, ticket_id: @kitchen_item.ticket_id }
    assert_redirected_to kitchen_item_path(assigns(:kitchen_item))
  end

  test "should destroy kitchen_item" do
    assert_difference('KitchenItem.count', -1) do
      delete :destroy, id: @kitchen_item
    end

    assert_redirected_to kitchen_items_path
  end
end
