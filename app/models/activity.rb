class Activity < ActiveRecord::Base
  belongs_to :destination
  has_many :reviews # NHO: recommend adding dependent destroy here
end
