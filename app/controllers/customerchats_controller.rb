class CustomerchatsController < ApplicationController
  before_action :set_customerchat, only: [:show, :edit, :update, :destroy]
  before_action :check_adm
  # GET /customerchats
  # GET /customerchats.json
  def index
    @customerchats = Customerchat.all
  end

  # GET /customerchats/1
  # GET /customerchats/1.json
  def show
  end

  # GET /customerchats/new
  def new
    @customerchat = Customerchat.new
  end

  # GET /customerchats/1/edit
  def edit
  end

  # POST /customerchats
  # POST /customerchats.json
  def create
    @customerchat = Customerchat.new(customerchat_params)

    respond_to do |format|
      if @customerchat.save
        format.html { redirect_to @customerchat, notice: 'Customerchat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customerchat }
      else
        format.html { render action: 'new' }
        format.json { render json: @customerchat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerchats/1
  # PATCH/PUT /customerchats/1.json
  def update
    respond_to do |format|
      if @customerchat.update(customerchat_params)
        format.html { redirect_to @customerchat, notice: 'Customerchat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customerchat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerchats/1
  # DELETE /customerchats/1.json
  def destroy
    @customerchat.destroy
    respond_to do |format|
      format.html { redirect_to customerchats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerchat
      @customerchat = Customerchat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerchat_params
      params.require(:customerchat).permit(:chattext, :chataux, :producer_id, :user_id)
    end
end
