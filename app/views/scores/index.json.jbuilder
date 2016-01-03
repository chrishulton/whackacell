json.array!(@scores) do |score|
  json.user score.user
  json.points score.points
  json.created_at score.created_at
end
