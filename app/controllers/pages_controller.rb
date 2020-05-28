class PagesController < ApplicationController

    def buscarusuario  
        if params[:buscarusuario].blank?  
            redirect_to(usuarios_path, alert: "¡Rellena el campo!") and return  
          else  
            @parameter = params[:buscarusuario].downcase  
            @usuarios = Usuario.all.where("lower(nombre) LIKE :buscarusuario", buscarusuario: "%#{@parameter}%")  
          end  
    end
    
    def buscarusuariorol  
      if params[:buscarusuariorol].blank?  
          redirect_to(usuarios_path, alert: "¡Rellena el campo!") and return  
        else  
          @parameter = params[:buscarusuariorol].downcase  
          @usuarios = Usuario.all.where("lower(rol) LIKE :buscarusuariorol", buscarusuariorol: "%#{@parameter}%")  
        end  
    end
    
    def buscarproducto  
        if params[:buscarproducto].blank?  
            redirect_to(productos_path, alert: "¡Rellena el campo!") and return  
          else  
            @parameter = params[:buscarproducto].downcase  
            @productos = Producto.all.where("lower(title) LIKE :buscarproducto", buscarproducto: "%#{@parameter}%")  
          end  
    end
  
    def buscarclase
      if params[:buscarclase].blank?  
        redirect_to(clases_path, alert: "¡Rellena el campo!") and return  
      else  
        @parameter = params[:buscarclase].downcase  
        @clases = Clase.all.where("lower(nombre) LIKE :buscarclase", buscarclase: "%#{@parameter}%")  
      end  
    end

    def buscartutorial  
      if params[:buscartutorial].blank?  
          redirect_to(tutoriales_path, alert: "¡Rellena el campo!") and return  
        else  
          @parameter = params[:buscartutorial].downcase  
          @tutoriale = Tutoriale.all.where("lower(title) LIKE :buscartutorial", buscartutorial: "%#{@parameter}%")  
        end  
  end
end
