class PymtsController < ApplicationController
  before_action :set_pymt, only: [:show, :edit, :update, :destroy]

  # GET /pymts
  # GET /pymts.json
  def index
    @pymts = Pymt.all.order('order_to_show')
  end

  # GET /pymts/1
  # GET /pymts/1.json
  def show
  end

  # GET /pymts/new
  def new
    @pymt = Pymt.new
  end

  # GET /pymts/1/edit
  def edit
  end

  # POST /pymts
  # POST /pymts.json
  def create
    @pymt = Pymt.new(pymt_params)

    respond_to do |format|
      if @pymt.save
        format.html { redirect_to @pymt, notice: 'Pymt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pymt }
      else
        format.html { render action: 'new' }
        format.json { render json: @pymt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pymts/1
  # PATCH/PUT /pymts/1.json
  def update
    respond_to do |format|
      if @pymt.update(pymt_params)
        format.html { redirect_to @pymt, notice: 'Pymt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pymt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pymts/1
  # DELETE /pymts/1.json
  def destroy
    @pymt.destroy
    respond_to do |format|
      format.html { redirect_to pymts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pymt
      @pymt = Pymt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pymt_params
      params.require(:pymt).permit(:order_to_show, :pymt_status, :is_requesting_pymt)
    end
end
