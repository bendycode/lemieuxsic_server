json.array!(@set_lists) do |set_list|
  json.extract! set_list, :id, :target_length_in_seconds
  json.url set_list_url(set_list, format: :json)
end
