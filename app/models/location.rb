class Location < ActiveRecord::Base
  validates :lat, presence: true
  validates :long, presence: true
end
