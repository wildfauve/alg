class Api::V1::WorkersController < Api::ApplicationController
  
  def index
    @algs = Algorithm.all
  end
  
  def create
  end
        
  
  def successful_create_event(party)
  end
  
  def successful_update_event(party)
  end
  
end