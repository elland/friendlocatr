class User < ActiveRecord::Base
  validates_numericality_of :latitude, :longitude
  validates_inclusion_of :latitude, :in => 0..90
  validates_inclusion_of :longitude, :in => 0..180

  validates_presence_of :name, :latitude, :longitude
  validates_length_of :name, :within => 0..50
end
