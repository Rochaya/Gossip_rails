class HomepageController < ApplicationController
  def show
    
  end
  def homepage
    puts params.inspect
    @gossips = Gossip.all
  end
end
