class ProfilePicturesController < ApplicationController
  def index
    @profile_pictures = ProfilePicture.all
  end

  def show
    @profile_picture = ProfilePicture.find(params[:id])
  end

  def new
    @profile_picture = ProfilePicture.new
  end

  def create
    @profile_picture = ProfilePicture.new
    @profile_picture.picture = params[:picture]
    @profile_picture.user_id = params[:user_id]

    if @profile_picture.save
      redirect_to "/profile_pictures", :notice => "Profile picture created successfully."
    else
      render 'new'
    end
  end

  def edit
    @profile_picture = ProfilePicture.find(params[:id])
  end

  def update
    @profile_picture = ProfilePicture.find(params[:id])

    @profile_picture.picture = params[:picture]
    @profile_picture.user_id = params[:user_id]

    if @profile_picture.save
      redirect_to "/profile_pictures", :notice => "Profile picture updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @profile_picture = ProfilePicture.find(params[:id])

    @profile_picture.destroy

    redirect_to "/profile_pictures", :notice => "Profile picture deleted."
  end
end
