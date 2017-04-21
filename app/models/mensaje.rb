require 'valid_email'
class Mensaje < ActiveRecord::Base
	validates :nombre, :contenido_mensaje, presence: true
	validates :email, :presence => true, :email => true
end
