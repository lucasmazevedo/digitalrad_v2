json.extract! block, :id, :page_id, :content, :position, :created_at, :updated_at
json.url block_url(block, format: :json)
