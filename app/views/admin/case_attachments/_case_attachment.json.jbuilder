json.extract! case_attachment, :id, :case_id, :photo, :created_at, :updated_at
json.url case_attachment_url(case_attachment, format: :json)
