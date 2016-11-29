class Project < ApplicationRecord
  belongs_to :user

  def pro_date
    project_date.strftime("%b %Y")
  end
end
