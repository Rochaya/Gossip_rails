class GossipsController < ApplicationController
  def show
    @index = Gossip.find(params[:id])
    @user = User.find(@index.user_id)
    @city = City.find(@user.city_id)
  end

  def new
    @gossip = Gossip.new
  end

  def create
    if current_user
      @gossip = Gossip.new(title: params['title'], content: params['content'], user_id: current_user.id)
      if @gossip.save
        flash[:success] = "Le potin a bien été créé !"
        redirect_to '/'
      else
        render :new
      end
    else
      flash[:danger] = "Vous devez être connecté pour créer un gossip."
      redirect_to session_path
    end
  end

  def index
    @gossips = Gossip.all
    @users = User.all
    # Méthode qui récupère tous les potins et les assigne à la variable @gossips
  end
end