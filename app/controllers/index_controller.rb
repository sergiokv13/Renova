class IndexController < ApplicationController

	def index
		@mensaje = Mensaje.new
	end

	def no_existe

	end
end
