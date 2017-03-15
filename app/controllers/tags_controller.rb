class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def explore
    puts "\n******* explore *******"
    if params[:tag]
      @photos = Photo.tagged_with(params[:tag])
    else
      @photos = Photo.all
    end
  end

  def set_tag
    puts "\n******* set_tag *******"
  end

  def index
    puts "\n******* tags *******"
    @photos = Photo.order('created_at')
    if params[:tag]
      @photos = Photo.tagged_with(params[:tag])
    else
      @photos = Photo.all
    end
  end

  def show
    puts "\n******* tags *******"
    @photos = Photo.order('created_at')
    @user = current_user
  end


end
