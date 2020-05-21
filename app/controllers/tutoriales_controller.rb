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
