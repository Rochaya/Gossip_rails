class PotinController < ApplicationController
    def potin
      @gossips = Gossip.all
      @id = params[:id]
    end
end
