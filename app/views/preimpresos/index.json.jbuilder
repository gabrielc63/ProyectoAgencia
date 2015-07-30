json.array!(@preimpresos) do |preimpreso|
  json.extract! preimpreso, :id, :fecha_sorteo, :fecha_inicio, :numero_sorteo, :precio, :cantidad, :tipo, :devolucion, :agencia_id
  json.url preimpreso_url(preimpreso, format: :json)
end
