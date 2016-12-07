class Education < ApplicationRecord
  belongs_to :user
  self.order(end_date: :desc)
  STATUS = %w[Graduated Graduating Enrolled Deferred Transferred].freeze
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
    end_date
    end
  end
end
