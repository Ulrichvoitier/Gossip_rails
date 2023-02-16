class SessionsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show, :name]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    

    if user.email == params[:email] && user.authenticate(params[:password])
      puts "Mot de passe incorrect, veuillez reéssayé !"


    else
        flash.now[:danger] = "Email et mot de passe incorrecte !"
        render new

    end
  end



  def destroy
    session.delete (:user_id)
  end
end
