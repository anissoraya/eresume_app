class PersonalDetail < ApplicationRecord
  belongs_to :user

  def full_street_address
    if !address.nil? and !postal_code.nil? and !state.nil?
    [address, postal_code, city, state].compact.join(', ')
    else
      "No address"
    end
  end
end
