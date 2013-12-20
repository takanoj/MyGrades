class Distribution < ActiveRecord::Base
  belongs_to :course
  attr_accessible :dist_type, :weight
  validates :dist_type, presence: true,
                      length: {minimum: 1}
  validates :weight, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
#      :message => "Invalid weight"

end
