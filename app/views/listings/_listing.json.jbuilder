json.extract! listing, :id, :name, :address, :price, :availability_from, :availability_to, :home_type, :room_type, :description, :amenites, :maximum_guest, :created_at, :updated_at
json.url listing_url(listing, format: :json)
