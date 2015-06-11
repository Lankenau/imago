class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new
    @cart.user_id = params[:user_id]
    @cart.picture_id = params[:picture_id]
    @cart.size_id = params[:size_id]
    @cart.material_id = params[:material_id]
    @cart.quantity = params[:quantity]
    @cart.frame_id = params[:frame_id]

    if @cart.save
      redirect_to "/carts", :notice => "Cart created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def update
    @cart = Cart.find(params[:id])

    @cart.user_id = params[:user_id]
    @cart.picture_id = params[:picture_id]
    @cart.size_id = params[:size_id]
    @cart.material_id = params[:material_id]
    @cart.quantity = params[:quantity]
    @cart.frame_id = params[:frame_id]

    if @cart.save
      redirect_to "/carts", :notice => "Cart updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cart = Cart.find(params[:id])

    @cart.destroy

    redirect_to "/carts", :notice => "Cart deleted."
  end
end
