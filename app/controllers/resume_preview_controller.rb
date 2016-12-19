class ResumePreviewController < ApplicationController
  layout 'default', only: [:preview_layout_1]
  layout :set_layout, only: [:printView, :preview_layout_3, :preview_layout_1]
  before_action :get_resume, only: [:preview_layout_1]
  before_action :user_data, only:[:printView, :preview_layout_3]
  before_action :check_layout, only: [:printView,:preview_layout_3]

  def preview_layout_1
    #@user = User.find_by_subdomain(request.subdomain)
    head(:not_found) if @user.nil?
  end

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

  def preview_cv
    @user = User.find(current_user.id)
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
    if @user.user_layout.present?
      "resume_layout/#{@user.user_layout.layout.name}"
    else
      'default'
    end
  end

end
