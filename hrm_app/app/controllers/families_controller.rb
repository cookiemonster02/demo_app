class FamiliesController < ApplicationController

  def index
    @members = Member.all
  end
 
 def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
  
 def show
    @member = Member.find(params[:id])
 end
end