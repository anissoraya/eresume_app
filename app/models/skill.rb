class Skill < ApplicationRecord
  belongs_to :user
  self.order(rate: :desc)

  def skil_rate
    if rate == 5
      "Expert"
    elsif rate == 3
      "Intermediate"
    else
      "Basic"
    end

  end

end
