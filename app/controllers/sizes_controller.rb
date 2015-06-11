class SizesController < ApplicationController
  def index
    @sizes = Size.all
  end

  def show
    @size = Size.find(params[:id])
  end

  def new
    @size = Size.new
  end

  def create
    @size = Size.new
    @size.picture_id = params[:picture_id]
    @size.size = params[:size]

    if @size.save
      redirect_to "/sizes", :notice => "Size created successfully."
    else
      render 'new'
    end
  end

  def edit
    @size = Size.find(params[:id])
  end

  def update
    @size = Size.find(params[:id])

    @size.picture_id = params[:picture_id]
    @size.size = params[:size]

    if @size.save
      redirect_to "/sizes", :notice => "Size updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @size = Size.find(params[:id])

    @size.destroy

    redirect_to "/sizes", :notice => "Size deleted."
  end
end
