class PersonalDetail < ApplicationRecord
  belongs_to :user

  def full_street_address
    [address, postal_code, city, state].compact.join(', ')
  end
end
