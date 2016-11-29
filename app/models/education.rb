class Education < ApplicationRecord
  belongs_to :user
  self.order(end_date: :desc)
  STATUS = %w[Graduated Graduating Enrolled Deferred Transferred].freeze
  def date_enter
    start_date.strftime("%b %Y")
  end

  def date_quit
    end_date.strftime("%b %Y")
  end
end
