json.array!(@payments) do |payment|
  json.extract! payment, :id, :cc_number, :cvv_number, :validity
  json.url payment_url(payment, format: :json)
end
