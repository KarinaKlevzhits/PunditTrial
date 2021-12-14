# frozen_string_literal: true

json.extract! product, :id, :name, :price, :private, :created_at, :updated_at
json.url product_url(product, format: :json)
