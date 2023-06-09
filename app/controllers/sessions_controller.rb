class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to gossips_path
      flash[:success] = "Connexion réussie!"
      session[:login_message] = flash[:success]

    else
      flash[:error] = "Email ou mot de passe incorrect."
      render 'new'
    end
  end

  def show
  end

  def index
  end

  def edit
    
  end

  def update
  end

  def destroy
      session.delete(:user_id)
  end
end
