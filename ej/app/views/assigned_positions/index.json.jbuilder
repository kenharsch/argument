json.array!(@assigned_positions) do |assigned_position|
  json.extract! assigned_position, :id
  json.url assigned_position_url(assigned_position, format: :json)
end
