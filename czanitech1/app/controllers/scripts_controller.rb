class ScriptsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_script, only: [:show, :edit, :update, :destroy]

  # GET /scripts
  # GET /scripts.json
  def index
    if current_user.admin?
      if (params[:searchproject]) 
        @scripts = Script.searchproject(params[:searchproject])
      elsif (params[:searchdescr]) 
        @scripts = Script.searchdescr(params[:searchdescr])
      else
        @scripts = Script.order('created_at DESC')
      end
    else
      if (params[:searchproject]) 
        @scripts = current_user.scripts.searchproject(params[:searchproject])
      elsif (params[:searchdescr]) 
        @scripts = current_user.scripts.searchdescr(params[:searchdescr])
      else
        @scripts = current_user.scripts.order('created_at DESC')
      end
    end
    @projstatuses = Projstatus.all 
  end

  # GET /scripts/1
  # GET /scripts/1.json
  def show

  end

  # GET /scripts/new
  def new
    @script = Script.new
    @movielinks = Movielink.all.limit(1)
    @projstatuses = Projstatus.all
    @pymts = Pymt.all
    @myimages = Myimage.all.limit(1)
  end

  # GET /scripts/1/edit
  def edit
    @movielinks = Movielink.all
    @projstatuses = Projstatus.all
    @pymts = Pymt.all
    if current_user.admin?
      @myimages = Myimage.where(image_hidden: [false, nil])
    else
      @myimages = current_user.myimages.where(image_hidden: [false, nil])
    end
  end

  # POST /scripts
  # POST /scripts.json
  def create
    @script = Script.new(script_params)
    @movielinks = Movielink.all.limit(1)

    respond_to do |format|
      if @script.save
        UserMailer.confirmation_message(current_user).deliver
        format.html { redirect_to @script, notice: 'Script was successfully created.' }
        format.json { render action: 'show', status: :created, location: @script }
      else
        format.html { render action: 'new' }
        format.json { render json: @script.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scripts/1
  # PATCH/PUT /scripts/1.json
  def update 
    respond_to do |format|
      if @script.update(script_params)
        format.html { redirect_to edit_script_path(script_params), notice: 'Script was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @script.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scripts/1
  # DELETE /scripts/1.json
  def destroy
    @script.destroy
    respond_to do |format|
      format.html { redirect_to scripts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_script
      @script = Script.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def script_params
      params.require(:script).permit(:email, :project, :notes, :step1, :step2, :step3,
       :step4, :step5, :user_id, :movielinkid1, :movielinkid2,
       :chat_history, :chat_entry, :usertype, :status, :pymt_id)
    end
end
