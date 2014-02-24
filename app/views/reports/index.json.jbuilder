json.array!(@reports) do |report|
  json.extract! report, :id, :started_at, :finished_at
  json.url report_url(report, format: :json)
end
