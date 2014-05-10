class MyimagesController < ApplicationController

  before_action :set_myimage, only: [:show, :edit, :update, :destroy]

  # GET /myimages
  # GET /myimages.json
  def index
    if current_user.admin?
      @myimages = Myimage.where(image_hidden: [false, nil])
    else
      @myimages = current_user.myimages.where(image_hidden: [false, nil])
    end 
  end

  def show_hidden
    if current_user.admin?
      @myimages = Myimage.where(image_hidden: [true, nil])
    else
      @myimages = current_user.myimages.where(image_hidden: [true, nil])
    end
    render 'index'
  end 

  def show_all
    if current_user.admin?
      @myimages = Myimage.all
    else
      @myimages = current_user.myimages.all
    end
    render 'index'
  end 

  # GET /myimages/1
  # GET /myimages/1.json
  def show
  end

  # GET /myimages/new
  def new
    @myimage = Myimage.new
  end

  # GET /myimages/1/edit
  def edit
  end

  # POST /myimages
  # POST /myimages.json
  def create
    @myimage = Myimage.new(myimage_params)

    respond_to do |format|
      if @myimage.save
        format.html { redirect_to @myimage, notice: 'Myimage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @myimage }
      else
        format.html { render action: 'new' }
        format.json { render json: @myimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myimages/1
  # PATCH/PUT /myimages/1.json
  def update
    respond_to do |format|
      if @myimage.update(myimage_params)
        format.html { redirect_to @myimage, notice: 'Myimage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @myimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myimages/1
  # DELETE /myimages/1.json
  def destroy
    @myimage.destroy
    respond_to do |format|
      format.html { redirect_to myimages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myimage
      @myimage = Myimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myimage_params
      params.require(:myimage).permit(:image_name, :image_link, :image, :user_id, :image_hidden)
    end
end
