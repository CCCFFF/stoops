json.array!(@bar_items) do |bar_item|
  json.extract! bar_item, :id, :ticket_id, :bar_menu_item_id, :bar_closeout
  json.url bar_item_url(bar_item, format: :json)
end
