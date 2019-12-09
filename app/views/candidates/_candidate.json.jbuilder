json.extract! candidate, :id, :name, :cellphone, :birth_date, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
