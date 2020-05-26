class ClasesController < ApplicationController
  before_action :set_clase, only: [:show, :edit, :update, :destroy]

  # GET /clases
  # GET /clases.json
  def index
    @clases = Clase.all
  end

  # GET /clases/1
  # GET /clases/1.json
  def show
  end

  # GET /clases/new
  def new
    @clase = Clase.new
  end

  # GET /clases/1/edit
  def edit
  end

  # POST /clases
  # POST /clases.json
  def create
    @clase = Clase.new(clase_params)
    if @clase.save
      flash[:success] = "Clase creada correctamente."
      redirect_to @clase
    else
      render 'new'
    end

    #respond_to do |format|
    #  if @clase.save
    #    format.html { redirect_to @clase, notice: 'Clase creada correctamente.' }
    #    format.json { render :show, status: :created, location: @clase }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @clase.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # PATCH/PUT /clases/1
  # PATCH/PUT /clases/1.json
  def update
    if @clase.update(clase_params)
      flash[:info] = "Clase actualizada correctamente."
      redirect_to @clase
    else
      render 'edit'
    end

=begin 
    respond_to do |format|
      if @clase.update(clase_params)
        format.html { redirect_to @clase, notice: 'Clase actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @clase }
      else
        format.html { render :edit }
        format.json { render json: @clase.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # DELETE /clases/1
  # DELETE /clases/1.json
  def destroy
    @clase.destroy
    flash[:success] = "Clase eliminada correctamente."
    redirect_to clases_url
=begin respond_to do |format|
      format.html { redirect_to clases_url, notice: 'Clase eliminada correctamente.' }
      format.json { head :no_content }
    end 
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clase
      @clase = Clase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clase_params
      params.require(:clase).permit(:nombre, :duracion, :profesor_asignado, :cantidad_alumnos, :contenido, :nivel_experiencia, :descripcion, :alumnos_asignados)
    end
end
