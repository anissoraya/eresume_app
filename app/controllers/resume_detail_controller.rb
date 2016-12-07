class ResumeDetailController < ApplicationController
  before_action :authenticate_user!
  def index
    @educations = Education.where(user_id: current_user.id).order(end_date: :desc)
    @experiences = EmploymentHistory.where(user_id: current_user.id).order(end_date: :desc)
    @skills = Skill.where(user_id: current_user.id).order(rate: :desc)
    @languages = Language.where(user_id: current_user.id)
    @projects = Project.where(user_id: current_user.id)
    @references = Reference.where(user_id: current_user.id)
    @videos = VideoGallery.where(user_id: current_user.id)
    @certs = Certificate.where(user_id: current_user.id).order(date: :desc)
  end
end
