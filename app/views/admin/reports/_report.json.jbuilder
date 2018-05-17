json.extract! report, :id, :title, :content, :hero_image, :slug, :status, :created_at, :updated_at
json.url report_url(report, format: :json)
