json.array!(@kitchen_items) do |kitchen_item|
  json.extract! kitchen_item, :id, :kitchen_menu_item_id, :ticket_id, :kitchen_closeout
  json.url kitchen_item_url(kitchen_item, format: :json)
end
