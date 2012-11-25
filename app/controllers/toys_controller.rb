class ToysController < ApplicationController
  def main
  	@toy = Toy.new
  end
  def create
  	@toy = current_user.toys.build(params[:toy])
    
  	if @toy.save
  		#@toy.update_attributes(owner: current_user)
      @toy.users<<(current_user)
  		redirect_to @toy
  	end
  end

  def show
  	@toy = Toy.find(params[:id])

    @ts = @toy.users

    if params[:search]
      @user = User.find_by_email(params[:search])
      @toy = Toy.find(params[:id])
      if @user
        @user.toys<<(@toy)
      end
    end

  end


end
