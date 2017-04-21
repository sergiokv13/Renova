json.array!(@mensajes) do |mensaje|
  json.extract! mensaje, :id, :nombre, :email, :contenido_mensaje
  json.url mensaje_url(mensaje, format: :json)
end
