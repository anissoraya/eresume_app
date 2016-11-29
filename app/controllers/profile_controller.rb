class ProfileController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(params[:id])
  end
end
