class GossipsController < ApplicationController
  
  
  def index 
    @all_gossips = Gossip.all
  end

    # @gossip_id = Gossip.find(params[:id])
  
  def show
    @gossips = Gossip.find(params[:id])
  end

  def user
    @gossips = Gossip.user(first_name)
  end

  def city
    @gossips = Gossip.city_id
  end

  # def new
  #   @gossips = Gossip.new
  # end

  # def create
  # end

  def create
    @gossip = Gossip.new(gossip_params)

    if @gossip.save
      redirect_to @index
    else
      render :new, status: :unprocessable_entity
    end
  end

end
