class FramesController < ApplicationController
  def index
    @frames = Frame.all
  end

  def show
    @frame = Frame.find(params[:id])
  end

  def new
    @frame = Frame.new
  end

  def create
    @frame = Frame.new
    @frame.material = params[:material]
    @frame.color = params[:color]
    @frame.picture_id = params[:picture_id]
    @frame.cover = params[:cover]

    if @frame.save
      redirect_to "/frames", :notice => "Frame created successfully."
    else
      render 'new'
    end
  end

  def edit
    @frame = Frame.find(params[:id])
  end

  def update
    @frame = Frame.find(params[:id])

    @frame.material = params[:material]
    @frame.color = params[:color]
    @frame.picture_id = params[:picture_id]
    @frame.cover = params[:cover]

    if @frame.save
      redirect_to "/frames", :notice => "Frame updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @frame = Frame.find(params[:id])

    @frame.destroy

    redirect_to "/frames", :notice => "Frame deleted."
  end
end
