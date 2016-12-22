class MyresumeController < ApplicationController
  before_filter :get_resume
  layout :set_lay

  def my_resume
    #@user = User.find_by_subdomain(request.subdomain)
  end

  private
    def set_lay
      #@user1 = User.find_by_subdomain(request.subdomain)
      return "resume_layout/#{@user.user_layout.layout.name}"
    end

end
