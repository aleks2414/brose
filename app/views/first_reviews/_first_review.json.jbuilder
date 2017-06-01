json.extract! first_review, :id, :team_id, :challenge_id, :q1, :q2, :q3, :q4, :q5, :q6, :created_at, :updated_at
json.url first_review_url(first_review, format: :json)
