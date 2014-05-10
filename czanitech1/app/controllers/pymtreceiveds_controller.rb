class PymtreceivedsController < ApplicationController
  before_action :set_pymtreceived, only: [:show, :edit, :update, :destroy]

  # GET /pymtreceiveds
  # GET /pymtreceiveds.json
  def index
    @pymtreceiveds = Pymtreceived.all
  end

  # GET /pymtreceiveds/1
  # GET /pymtreceiveds/1.json
  def show
  end

  # GET /pymtreceiveds/new
  def new
    @pymtreceived = Pymtreceived.new
  end

  # GET /pymtreceiveds/1/edit
  def edit
  end

  # POST /pymtreceiveds
  # POST /pymtreceiveds.json
  def create
    @pymtreceived = Pymtreceived.new(pymtreceived_params)

    respond_to do |format|
      if @pymtreceived.save
        format.html { redirect_to @pymtreceived, notice: 'Pymtreceived was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pymtreceived }
      else
        format.html { render action: 'new' }
        format.json { render json: @pymtreceived.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pymtreceiveds/1
  # PATCH/PUT /pymtreceiveds/1.json
  def update
    respond_to do |format|
      if @pymtreceived.update(pymtreceived_params)
        format.html { redirect_to @pymtreceived, notice: 'Pymtreceived was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pymtreceived.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pymtreceiveds/1
  # DELETE /pymtreceiveds/1.json
  def destroy
    @pymtreceived.destroy
    respond_to do |format|
      format.html { redirect_to pymtreceiveds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pymtreceived
      @pymtreceived = Pymtreceived.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pymtreceived_params
      params.require(:pymtreceived).permit(:amount, :project_id, :control_1, :control_2)
    end
end
