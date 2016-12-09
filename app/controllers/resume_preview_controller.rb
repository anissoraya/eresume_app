class ResumePreviewController < ApplicationController
  layout 'default', only: [:preview_layout_1]
  layout :set_layout, only: [:printView, :preview_layout_3]
  before_action :user_data
  before_action :check_layout, only: [:printView,:preview_layout_3]

  def preview_layout_1
  end

  def printView
  end

  def preview_layout_3
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "pdf_file.pdf",
                :template => 'resume_preview/preview_cv.pdf.erb',
                :layout => "resume_layout/#{@user.user_layout.layout.name}.html.erb",
                margin:  {   top:              2,
                            bottom:            2,
                            left:              2,
                            right:             2 }
      end
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
