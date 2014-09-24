json.array!(@bar_menu_items) do |bar_menu_item|
  json.extract! bar_menu_item, :id, :name, :price
  json.url bar_menu_item_url(bar_menu_item, format: :json)
end
