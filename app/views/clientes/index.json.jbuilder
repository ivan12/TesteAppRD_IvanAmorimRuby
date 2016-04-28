json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :usuario_id, :nome, :email, :telefone
  json.url cliente_url(cliente, format: :json)
end
