json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :user_id, :table_num, :ticket_close
  json.url ticket_url(ticket, format: :json)
end
