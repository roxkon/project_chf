json.extract! wallet, :id, :code, :coin_type, :limit, :network_address, :created_at, :updated_at
json.url wallet_url(wallet, format: :json)
