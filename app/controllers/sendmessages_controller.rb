class SendmessagesController < ApplicationController
  before_action :set_sendmessage, only: [:show, :edit, :update, :destroy]
  # GET /sendmessages
  # GET /sendmessages.json
  def index
    @sendmessages = Sendmessage.all
  end

  # GET /sendmessages/1
  # GET /sendmessages/1.json
  def show
  end

  # GET /sendmessages/new
  def new
    @sendmessage = Sendmessage.new
  end

  # GET /sendmessages/1/edit
  def edit
  end

  # POST /sendmessages
  # POST /sendmessages.json
  def create
    @sendmessage = Sendmessage.new(sendmessage_params)

    respond_to do |format|
      if @sendmessage.save
        UserMailer.confirmation_contact_message(@sendmessage).deliver
        format.html { redirect_to send_path, notice: 'Your message was successfully sent.' }
        format.json { render action: 'show', status: :created, location: @sendmessage }
      else
        format.html { render action: 'new' }
        format.json { render json: @sendmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sendmessages/1
  # PATCH/PUT /sendmessages/1.json
  def update
    respond_to do |format|
      if @sendmessage.update(sendmessage_params)
        format.html { redirect_to @sendmessage, notice: 'Sendmessage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sendmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sendmessages/1
  # DELETE /sendmessages/1.json
  def destroy
    @sendmessage.destroy
    respond_to do |format|
      format.html { redirect_to sendmessages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sendmessage
      @sendmessage = Sendmessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sendmessage_params
      params.require(:sendmessage).permit(:name, :email, :message, :user_id)
    end
end
