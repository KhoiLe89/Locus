class Destination < ActiveRecord::Base
  belongs_to :continent
  has_many :activities, dependent: :destroy
end
