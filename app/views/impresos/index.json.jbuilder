json.array!(@impresos) do |impreso|
  json.extract! impreso, :id, :fecha, :quiniela, :quini_ex, :loteria_online, :otros_juegos, :otros_gastos, :premios, :subagencia_id
  json.url impreso_url(impreso, format: :json)
end
