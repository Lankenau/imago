class MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new
    @material.material = params[:material]
    @material.picture_id = params[:picture_id]

    if @material.save
      redirect_to "/materials", :notice => "Material created successfully."
    else
      render 'new'
    end
  end

  def edit
    @material = Material.find(params[:id])
  end

  def update
    @material = Material.find(params[:id])

    @material.material = params[:material]
    @material.picture_id = params[:picture_id]

    if @material.save
      redirect_to "/materials", :notice => "Material updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @material = Material.find(params[:id])

    @material.destroy

    redirect_to "/materials", :notice => "Material deleted."
  end
end
