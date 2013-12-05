class Distribution < ActiveRecord::Base
  belongs_to :course
  attr_accessible :dist_type, :weight
  validates :dist_type, presence: true,
                      length: {minimum: 1}
  validates :weight, presence: true,
			:inclusion => 0..100
#      :message => "Invalid weight"

end
