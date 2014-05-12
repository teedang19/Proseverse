class UsersController < ApplicationController
  def index
    @user = User.find_by_id(params[:user_id])
    @user ? @user : @user = User.new
  end

  def create
    @user = User.create(username: params[:username], password: params[:password])
  end

  def show
    @user = User.find(params[:user_id])
  end
end
