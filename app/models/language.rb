class Language < ApplicationRecord
  belongs_to :user

  def lan_rate
    if writing_rate == 5
      "Native"
    elsif writing_rate == 4
      "Fluent"
    elsif writing_rate == 3
      "Conversational"
    else
      "Basic"
    end
  end
end
