json.array!(@eval_reflections) do |eval_reflection|
  json.extract! eval_reflection, :id
  json.url eval_reflection_url(eval_reflection, format: :json)
end
