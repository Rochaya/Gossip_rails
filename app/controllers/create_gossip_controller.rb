class CreateGossipController < ApplicationController
  def show
  end
  def create
    @gossip = Gossip.create('title' => params[:title], 'content' => params[:content])
    if @gossip.save
      redirect_to gossips_path
    else
      render :new
    end
  end
  private
  def gossip_params
    params.require(:gossip).permit(:name, :content)
  end
end