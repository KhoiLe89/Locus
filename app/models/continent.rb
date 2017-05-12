class Continent < ApplicationRecord
  has_many :destinations # NHO: recommend addding dependent destroy here
end
