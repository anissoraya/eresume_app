class EmploymentHistory < ApplicationRecord
  belongs_to :user
  self.order(end_date: :DESC)

  def date_enter
    start_date.strftime("%b %Y")
  end

  def date_quit
    end_date.strftime("%b %Y")
  end
end