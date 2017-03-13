class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def explore
    puts "\n******* explore *******"
    @tags = Tag.all
  end

  def set_tag
    puts "\n******* set_tag *******"
    @tag = Tag.find(params[:id])
  end

end
