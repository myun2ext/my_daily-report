json.array!(@report_dates) do |report_date|
  json.extract! report_date, :id, :date
  json.url report_date_url(report_date, format: :json)
end
