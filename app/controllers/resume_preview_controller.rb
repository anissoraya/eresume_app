class ResumePreviewController < ApplicationController
  layout 'default', only: [:preview_layout_1, :preview_layout_2]
  layout :set_layout, only: [:preview_layout_3]
  before_action :user_data
  before_action :check_layout, only: [:preview_layout_3]

  def preview_layout_1
  end

  def preview_layout_2
  end

  def preview_layout_3
  end

  protected
  def user_data
    @user = User.find_by_subdomain!(request.subdomain)
  end

  def check_layout
    if !@user.user_layout.present?
      redirect_to manage_layout_path
      flash[:notice] = "You haven't choose layout for your resume yet. Please add first"
    end
  end

  def set_layout
    if @user.user_layout.present?
      "#{@user.user_layout.layout.name}"
    else
      'resume_layout/resume2'
    end
  end

end
