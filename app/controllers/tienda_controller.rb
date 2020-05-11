class TiendaController < ApplicationController
    def index
        @productos = Producto.all
    end
end