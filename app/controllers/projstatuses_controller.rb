class ProjstatusesController < ApplicationController
  before_action :set_projstatus, only: [:show, :edit, :update, :destroy]
  before_action :check_adm
  # GET /projstatuses
  # GET /projstatuses.json
  def index
    @projstatuses = Projstatus.all.order('ordertoshow')
  end

  # GET /projstatuses/1
  # GET /projstatuses/1.json
  def show
  end

  # GET /projstatuses/new
  def new
    @projstatus = Projstatus.new
  end

  # GET /projstatuses/1/edit
  def edit
  end

  # POST /projstatuses
  # POST /projstatuses.json
  def create
    @projstatus = Projstatus.new(projstatus_params)

    respond_to do |format|
      if @projstatus.save
        format.html { redirect_to @projstatus, notice: 'Projstatus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @projstatus }
      else
        format.html { render action: 'new' }
        format.json { render json: @projstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projstatuses/1
  # PATCH/PUT /projstatuses/1.json
  def update
    respond_to do |format|
      if @projstatus.update(projstatus_params)
        format.html { redirect_to @projstatus, notice: 'Projstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projstatuses/1
  # DELETE /projstatuses/1.json
  def destroy
    @projstatus.destroy
    respond_to do |format|
      format.html { redirect_to projstatuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projstatus
      @projstatus = Projstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projstatus_params
      params.require(:projstatus).permit(:statusname, :ordertoshow, :color)
    end
end
