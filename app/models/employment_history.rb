class EmploymentHistory < ApplicationRecord
  belongs_to :user
  self.order(end_date: :DESC)

  def date_enter
    if !start_date.nil?
    start_date.strftime("%b %Y")
    else
      start_date
    end
  end

  def date_quit
    if !end_date.nil?
    end_date.strftime("%b %Y")
    else
      "Present"
    end
  end

  def date_format_enter
    start_date.strftime('%Y-%m-%d')
  end
end
