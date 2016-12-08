class Project < ApplicationRecord
  belongs_to :user

  def pro_date
    if !project_date.nil?
    project_date.strftime("%b %Y")
    else
      "No Date"
    end
  end
end
