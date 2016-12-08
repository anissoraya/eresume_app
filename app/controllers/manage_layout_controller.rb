class ManageLayoutController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :authenticate_admin!, only: [:new, :edit]
  def index
    @layouts = Layout.all
  end

  def new
    @layouts = Layout.all
    @layout = Layout.new
  end

  def edit
    @layout = Layout.find(params[:id])
  end

  def create
    @layout = Layout.new(layout_params)
      if @layout.save

      format.html{ redirect_to manage_layout_new_path, :notice => 'Layout successfully added' }
      else
      format.html{ render :new }
      end
  end
  def update
    respond_to do |format|
      if @layout.update(layout_params)
        format.html { redirect_to manage_layout_new_path, notice: 'Layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @layout }
      else
        format.html { render :edit }
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def layout_params
    params.require(:layout).permit(:name, :layout_image)
  end

end
