class MovielinksController < ApplicationController
  before_action :set_movielink, only: [:show, :edit, :update, :destroy]
  before_action :check_adm
  # GET /movielinks
  # GET /movielinks.json
  def index
    @movielinks = Movielink.order('created_at DESC')
  end

  # GET /movielinks/1
  # GET /movielinks/1.json
  def show
  end

  # GET /movielinks/new
  def new
    @movielink = Movielink.new
  end

  # GET /movielinks/1/edit
  def edit
  end

  # POST /movielinks
  # POST /movielinks.json
  def create
    @movielink = Movielink.new(movielink_params)

    respond_to do |format|
      if @movielink.save
        format.html { redirect_to @movielink, notice: 'Movielink was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movielink }
      else
        format.html { render action: 'new' }
        format.json { render json: @movielink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movielinks/1
  # PATCH/PUT /movielinks/1.json
  def update
    respond_to do |format|
      if @movielink.update(movielink_params)
        format.html { redirect_to @movielink, notice: 'Movielink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movielink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movielinks/1
  # DELETE /movielinks/1.json
  def destroy
    @movielink.destroy
    respond_to do |format|
      format.html { redirect_to movielinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movielink
      @movielink = Movielink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movielink_params
      params.require(:movielink).permit(:moviename, :movielink, :moviedescription)
    end
end
