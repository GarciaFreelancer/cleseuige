class Classcourse < ApplicationRecord
  belongs_to :course
  belongs_to :former

  has_many :subscriptions

end
