class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :authenticate_admin!, only: [:admin_page]
  def index
  end

  def admin_page
    @user = User.all
  end

end
