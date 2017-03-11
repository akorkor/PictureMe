class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]


  def home
    puts "\n******* home *******"
    @photos = Photo.order('created_at')
    puts "current_user: #{current_user.inspect}"

  end

  # GET /photos
  def index
    @photos = Photo.order('created_at')
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    puts "\n******* new *******"
    @photo = Photo.new(user_id: current_user.id)
    puts "@photo: #{@photo.inspect}"
    @user = current_user
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    puts "\n******* create *******"
    @photo = Photo.new(photo_params)
    puts "photo_params: #{photo_params.inspect}"

      if @photo.save
        flash[:success] = "Your photo has been successfully added!"
        @photo.update(user_id: current_user)
      else
        render :new
      end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:user_id, :content_type, :title, :body, :likes, :image)
    end
end
