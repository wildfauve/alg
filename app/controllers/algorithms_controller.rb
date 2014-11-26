class AlgorithmsController < ApplicationController
  
  def index
    @algs = Algorithm.all
  end
  
  def new
    @alg = Algorithm.new
  end
  
  def edit
    @alg = Algorithm.find(params[:id])
  end
  
  def create
    @alg = Algorithm.new
    @alg.subscribe self
    @alg.create_me(alg: params[:algorithm])
  end

  def update
    @alg = Algorithm.find(params[:id])
    @alg.subscribe self
    @alg.update_me(alg: params[:algorithm])
  end

  
  def successful_alg_create_event(alg)
    redirect_to algorithms_path
  end

  def successful_alg_update_event(alg)
    redirect_to algorithms_path
  end
  
  
end