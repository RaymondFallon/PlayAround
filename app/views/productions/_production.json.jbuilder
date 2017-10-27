json.extract! production, :id, :play_id, :theater, :zip_code, :opening, :closing, :production_notes, :created_at, :updated_at
json.url production_url(production, format: :json)
