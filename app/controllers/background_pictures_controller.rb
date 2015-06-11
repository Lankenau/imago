class BackgroundPicturesController < ApplicationController
  def index
    @background_pictures = BackgroundPicture.all
  end

  def show
    @background_picture = BackgroundPicture.find(params[:id])
  end

  def new
    @background_picture = BackgroundPicture.new
  end

  def create
    @background_picture = BackgroundPicture.new
    @background_picture.picture = params[:picture]
    @background_picture.user_id = params[:user_id]

    if @background_picture.save
      redirect_to "/background_pictures", :notice => "Background picture created successfully."
    else
      render 'new'
    end
  end

  def edit
    @background_picture = BackgroundPicture.find(params[:id])
  end

  def update
    @background_picture = BackgroundPicture.find(params[:id])

    @background_picture.picture = params[:picture]
    @background_picture.user_id = params[:user_id]

    if @background_picture.save
      redirect_to "/background_pictures", :notice => "Background picture updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @background_picture = BackgroundPicture.find(params[:id])

    @background_picture.destroy

    redirect_to "/background_pictures", :notice => "Background picture deleted."
  end
end
