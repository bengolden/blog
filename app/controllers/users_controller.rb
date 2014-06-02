class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def create
    User.create(params)
    redirect_to :action => :index
  end

  def update
    User.update(params[:id],{name: params[:name], email: params[:email]})
    redirect_to :action => :index
  end

  def destroy
    User.find_by_id(params[:id]).destroy
    redirect_to :action => :index
  end

end
