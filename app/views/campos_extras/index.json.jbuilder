json.array!(@campos_extras) do |campos_extra|
  json.extract! campos_extra, :id, :emailCliente, :nomeCampo, :tipoCampo, :valorCampo, :itensCombox, :itemselCombobox
  json.url campos_extra_url(campos_extra, format: :json)
end
