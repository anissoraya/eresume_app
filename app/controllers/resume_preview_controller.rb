class ResumePreviewController < ApplicationController
  layout :set_layout, only: [:printView, :preview_layout_3]
  before_action :user_data, only:[:printView, :preview_layout_3]
  before_action :check_layout, only: [:printView,:preview_layout_3]


  def printView
    #respond_to do |format|
    #  format.html
    #  format.pdf
    # end
  end

  def preview_layout_3
    respond_to do |format|
      format.html
      format.pdf
    end

  end


  protected
  def user_data
    @user = User.find(current_user.id)
  end

  def check_layout
    if !@user.user_layout.present?
      redirect_to manage_layout_path
      format.html { redirect_to manage_layout_path, alert:"You haven't choose layout for your resume yet. Please add first"}
    end
  end

  def set_layout
     @userl = User.find(current_user.id)
    if @user.user_layout.present?
      return "resume_layout/#{@userl.user_layout.layout.name}"
    else
      return "resume_layout/resume1"
    end
  end

  #def set_lay_1
  #  @user1 = User.find_by_subdomain(request.subdomain)
  #  return "resume_layout/#{@user1.user_layout.layout.name}"
  #end

end
