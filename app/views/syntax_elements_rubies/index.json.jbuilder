json.array!(@syntax_elements_rubies) do |syntax_elements_ruby|
  json.extract! syntax_elements_ruby, :id, :element
  json.url syntax_elements_ruby_url(syntax_elements_ruby, format: :json)
end
