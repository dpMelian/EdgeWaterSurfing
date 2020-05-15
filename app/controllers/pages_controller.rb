class PagesController < ApplicationController

    def buscarusuario  
        if params[:buscarusuario].blank?  
            redirect_to(root_path, alert: "Empty field!") and return  
          else  
            @parameter = params[:buscarusuario].downcase  
            @usuarios = Usuario.all.where("lower(nombre) LIKE :buscarusuario", buscarusuario: "%#{@parameter}%")  
          end  
    end
    def buscarproducto  
        if params[:buscarproducto].blank?  
            redirect_to(root_path, alert: "Empty field!") and return  
          else  
            @parameter = params[:buscarproducto].downcase  
            @productos = Producto.all.where("lower(title) LIKE :buscarproducto", buscarproducto: "%#{@parameter}%")  
          end  
    end
  
    def buscarclase
      if params[:buscarclase].blank?  
        redirect_to(root_path, alert: "Empty field!") and return  
      else  
        @parameter = params[:buscarclase].downcase  
        @clases = Clase.all.where("lower(nombre) LIKE :buscarclase", buscarclase: "%#{@parameter}%")  
      end  
    end
end
