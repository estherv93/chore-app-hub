json.array!(@chore_lists) do |chore_list|
  json.extract! chore_list, :id, :title
  json.url chore_list_url(chore_list, format: :json)
end
