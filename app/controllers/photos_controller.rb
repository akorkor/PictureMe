class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]


  def home
    puts "\n******* home *******"
    @photos = Photo.all
    puts "current_user: #{current_user.inspect}"
    @user = current_user
  end

  # GET /photos
  def index
    puts "\n******* profile *******"
    puts "current_user: #{current_user.inspect}"
#    @photos = Photo.order('created_at')
    @photos = current_user.photos.order('created_at')
    @user = current_user
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @comments = Comment.where(photo_id: params[:id])
    @user = current_user

  end

  # GET likes
  def likes
    puts "\n******* likes *******"
    puts "params: #{params.inspect}"
    @p_u = PhotoUser.where(user_id: params[:user_id], photo_id: params[:photo_id])
    puts "@p_u: #{@p_u.inspect}"
    @photo = Photo.find(params[:photo_id])
    puts "@photo: #{@photo.inspect}"
    @likes = @photo.likes
    if @p_u.length < 1
      puts "\n** NO LIKES **"
      @likes = @likes+1
      puts "@likes: #{@likes.inspect}"
      @photo.update(likes:@likes)
      @p_u2 = PhotoUser.create(photo_id: params[:photo_id], user_id: params[:user_id])
      puts "@p_u2: #{@p_u2.inspect}"
    else
      puts "\n** LIKES   !!!**"
    end
    puts "@photo: #{@photo.inspect}"
    render :json => {"likes": @likes}

  end

  # GET /photos/new
  def new
    puts "\n******* new *******"
    @photo = Photo.new(user_id: current_user.id)
    puts "@photo: #{@photo.inspect}"
#    @user = current_user.photos.new(photo_params)
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
        redirect_to :home
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
