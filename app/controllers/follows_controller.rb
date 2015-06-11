class FollowsController < ApplicationController
  def index
    @follows = Follow.all
  end

  def show
    @follow = Follow.find(params[:id])
  end

  def new
    @follow = Follow.new
  end

  def create
    @follow = Follow.new
    @follow.follower_id = current_user.id
    @follow.followee_id = params[:followee_id]
    @follow.follow = params[:follow]

    if @follow.save
      redirect_to "/follows", :notice => "Follow created successfully."
    else
      render 'new'
    end
  end

  def edit
    @follow = Follow.find(params[:id])
  end

  def update
    @follow = Follow.find(params[:id])

    @follow.follower_id = current_user.id
    @follow.followee_id = params[:followee_id]
    @follow.follow = params[:follow]

    if @follow.save
      redirect_to "/follows", :notice => "Follow updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @follow = Follow.find(params[:id])

    @follow.destroy

    redirect_to "/follows", :notice => "Follow deleted."
  end
end
