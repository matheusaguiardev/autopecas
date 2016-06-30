json.array!(@autopecas) do |autopeca|
  json.extract! autopeca, :id, :nome, :num_fabrica, :montadora, :aplicacao, :valor_compra, :valor_venda, :codigo_peca, :estoque, :grupo, :info, :pratileira
  json.url autopeca_url(autopeca, format: :json)
end
