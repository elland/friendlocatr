class User < ActiveRecord::Base
  validates_numericality_of :lat, :lon
  validates_inclusion_of :lat, :in => 0..90
  validates_inclusion_of :lon, :in => 0..180

  validates_presence_of :name, :lat, :lon
  validates_length_of :name, :within => 0..50
end
