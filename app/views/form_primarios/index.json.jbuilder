json.array!(@form_primarios) do |form_primario|
  json.extract! form_primario, :id, :emailUsuario, :nomeCampo, :tipoCampo, :itensCombo
  json.url form_primario_url(form_primario, format: :json)
end
