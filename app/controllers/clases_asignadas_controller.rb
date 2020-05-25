class ClasesAsignadasController < ApplicationController
  def index
  end

  helper_method :current_user
  helper_method :logged_in?
  
  def current_user
    Usuario.find_by(id: session[:usuario_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
end
