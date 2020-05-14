class PagesController < ApplicationController

    def search  
        if params[:search].blank?  
            redirect_to(root_path, alert: "Empty field!") and return  
          else  
            @parameter = params[:search].downcase  
            @usuarios = Usuario.all.where("lower(nombre) LIKE :search", search: @parameter)  
          end  
    end
end
