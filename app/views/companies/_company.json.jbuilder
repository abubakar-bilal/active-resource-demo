json.extract! company, :id, :name, :company_type, :description, :size, :created_at, :updated_at
json.url company_url(company, format: :json)