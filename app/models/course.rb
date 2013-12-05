class Course < ActiveRecord::Base
  attr_accessible :title, :description
  validates :title, presence: true,
                      length: {minimum: 1}

  has_many :distributions, :dependent => :destroy

end
