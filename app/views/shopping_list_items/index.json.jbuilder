json.array!(@shopping_list_items) do |shopping_list_item|
  json.extract! shopping_list_item, :id, :name, :need
  json.url shopping_list_item_url(shopping_list_item, format: :json)
end
