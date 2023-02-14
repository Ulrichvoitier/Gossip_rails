class GossipsController < ApplicationController

  def new
    @gossips = Gossip.new
  end

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
