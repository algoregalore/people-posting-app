class ProfilesController < ApplicationController
  def index
    # all the user's profiles
    @users = User.all
  end

  def show
    # individual profile
    @user = User.find(params[:id])
  end
end
