class InscriptionController < ApplicationController

  def inscription_section
  end
  
def new

end

def create
  @user = User.new(post_params)
    # puts "$"*30
    # puts params[:user[email]]
    # puts "$"*30

    
    if @user.save # essaie de sauvegarder en base @gossip
      redirect_to 'http://localhost:3000/'  # si ça marche, il redirige vers la page d'index du site
      puts "$"*30
      puts "Authentification réussi !"
      puts "$"*30

    else
      render :new # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      puts "$"*30
      puts "authentification raté !"
      puts "$"*30
    end
end

private

def post_params
  params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id, :password)
end

end
