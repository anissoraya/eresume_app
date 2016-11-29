class UserLayoutsController < ApplicationController
  before_action :set_user_layout, only: [:show, :edit, :update, :destroy]

  # GET /user_layouts
  # GET /user_layouts.json
  def index
    @user_layouts = UserLayout.all
  end

  # GET /user_layouts/1
  # GET /user_layouts/1.json
  def show
  end

  # GET /user_layouts/new
  def new
    @user_layout = current_user.build_user_layout
  end

  # GET /user_layouts/1/edit
  def edit
  end

  # POST /user_layouts
  # POST /user_layouts.json
  def create
    @user_layout = current_user.build_user_layout(user_layout_params)

    respond_to do |format|
      if @user_layout.save
        format.html { redirect_to resume_preview/preview_layout_3, notice: 'User layout was successfully created.' }
        format.json { render :show, status: :created, location: @user_layout }
      else
        format.html { render :new }
        format.json { render json: @user_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_layouts/1
  # PATCH/PUT /user_layouts/1.json
  def update
    respond_to do |format|
      if @user_layout.update(user_layout_params)
        format.html { redirect_to manage_layout_path, notice: 'User layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_layout }
      else
        format.html { render :edit }
        format.json { render json: @user_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_layouts/1
  # DELETE /user_layouts/1.json
  def destroy
    @user_layout.destroy
    respond_to do |format|
      format.html { redirect_to user_layouts_url, notice: 'User layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_layout
      @user_layout = UserLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_layout_params
      params.require(:user_layout).permit(:title,:layout_id)
    end
end
