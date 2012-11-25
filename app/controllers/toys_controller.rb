class ToysController < ApplicationController
  def main
  	@toy = Toy.new
  end
  def create
  	@toy = Toy.new(params[:toy])
  	if @toy.save
  		@toy.update_attributes(owner: current_user)
  		redirect_to @toy
  	end
  end

  def show
  	@toy = Toy.find(params[:id])
 


  	
  end
end
