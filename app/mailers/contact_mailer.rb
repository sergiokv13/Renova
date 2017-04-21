class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def contact_email(mensaje)
    @mensaje = mensaje
    mail(to: "info@dual-designers.com", subject: 'Mail de contacto de' + @mensaje.nombre)
  end
end
