json.extract! memo, :id, :body, :tag, :tag_id, :user_id, :created_at, :updated_at
json.url memo_url(memo, format: :json)
