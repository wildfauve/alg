class HomeController < ApplicationController
  
  def index
    respond_to do |f|
      f.html {redirect_to algorithms_path}
      f.json {raise}
    end
  end
  
end