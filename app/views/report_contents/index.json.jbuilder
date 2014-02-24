json.array!(@report_contents) do |report_content|
  json.extract! report_content, :id, :content
  json.url report_content_url(report_content, format: :json)
end
