class UsersController < ApplicationController
  def edit
  end

  def update
    user = User.find(params[:id])
  end

  def destroy
  end

  def new
  end

end
