class PicturesController < ApplicationController

  skip_before_action :authenticate_user!, :only =>[:index, :show]

  def index
    @pictures = Picture.all
  end

  def profile
      @pictures = current_user.pictures
  end

  def discovery
      @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new
    @picture.orientation = params[:orientation]
    @picture.width = params[:width]
    @picture.ratio = params[:ratio]
    @picture.latitude = params[:latitude]
    @picture.longitude = params[:longitude]
    @picture.height = params[:height]
    @picture.image = params[:image]
    @picture.description = params[:description]
    @picture.city = params[:city]
    @picture.country = params[:country]
    @picture.type = params[:type]
    @picture.user_id = current_user.id
    @picture.tag_id = params[:tag_id]
    @picture.name = params[:name]

    if @picture.save
      redirect_to "/pictures", :notice => "Picture created successfully."
    else
      render 'new'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    @picture.orientation = params[:orientation]
    @picture.width = params[:width]
    @picture.ratio = params[:ratio]
    @picture.latitude = params[:latitude]
    @picture.longitude = params[:longitude]
    @picture.height = params[:height]
    @picture.image = params[:image]
    @picture.description = params[:description]
    @picture.city = params[:city]
    @picture.country = params[:country]
    @picture.type = params[:type]
    @picture.user_id = params[:user_id]
    @picture.tag_id = params[:tag_id]
    @picture.name = params[:name]

    if @picture.save
      redirect_to "/pictures", :notice => "Picture updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])

    @picture.destroy

    redirect_to "/pictures", :notice => "Picture deleted."
  end
end
