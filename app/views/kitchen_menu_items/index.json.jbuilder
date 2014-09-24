json.array!(@kitchen_menu_items) do |kitchen_menu_item|
  json.extract! kitchen_menu_item, :id, :name, :price
  json.url kitchen_menu_item_url(kitchen_menu_item, format: :json)
end
