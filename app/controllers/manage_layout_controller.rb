class ManageLayoutController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @layouts = Layout.all
  end

  def new
    @layouts = Layout.all
    @layout = Layout.new
  end

  def create
    @layout = Layout.new(layout_params)
      if @layout.save
      redirect_to manage_layout_new_path
      flash[:notice] = 'Layout successfully added'
      else
        redirect_to manage_layout_new_path
        flash[:alert] = 'Layout is unable to save'
      end
  end

  private
  def layout_params
    params.require(:layout).permit(:name, :layout_image)
  end

end
