class TutorialesController < ApplicationController
  before_action :set_tutoriale, only: [:show, :edit, :update, :destroy]

  # GET /tutoriales
  # GET /tutoriales.json
  def index
    @tutoriales = Tutoriale.all
  end

  # GET /tutoriales/1
  # GET /tutoriales/1.json
  def show
  end

  # GET /tutoriales/new
  def new
    @tutoriale = Tutoriale.new
  end

  # GET /tutoriales/1/edit
  def edit
  end

  # POST /tutoriales
  # POST /tutoriales.json
  def create
    @tutoriale = Tutoriale.new(tutoriale_params)

    respond_to do |format|
      if @tutoriale.save
        format.html { redirect_to @tutoriale, notice: 'Tutoriale was successfully created.' }
        format.json { render :show, status: :created, location: @tutoriale }
      else
        format.html { render :new }
        format.json { render json: @tutoriale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutoriales/1
  # PATCH/PUT /tutoriales/1.json
  def update
    respond_to do |format|
      if @tutoriale.update(tutoriale_params)
        format.html { redirect_to @tutoriale, notice: 'Tutoriale was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutoriale }
      else
        format.html { render :edit }
        format.json { render json: @tutoriale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutoriales/1
  # DELETE /tutoriales/1.json
  def destroy
    @tutoriale.destroy
    respond_to do |format|
      format.html { redirect_to tutoriales_url, notice: 'Tutoriale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutoriale
      @tutoriale = Tutoriale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutoriale_params
      params.require(:tutoriale).permit(:title, :body, :level, :url)
    end
end