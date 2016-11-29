class Skill < ApplicationRecord
  belongs_to :user
  self.order(rate: :desc)


end
