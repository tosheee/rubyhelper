json.array!(@description_keywords) do |description_keyword|
  json.extract! description_keyword, :id, :syntax_keyword_rubies_id, :description, :code
  json.url description_keyword_url(description_keyword, format: :json)
end
