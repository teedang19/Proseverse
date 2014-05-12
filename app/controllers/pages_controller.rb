class PagesController < ApplicationController

  def index
    user = User.find_by_id(params[:user_id])
    user ? user : @user = User.new
  end

end
