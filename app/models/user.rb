class User < ActiveRecord::Base
  validates_numericality_of :lat, :lon
  validates_inclusion_of :latitude, :in => 0..90, :message => 'not valid'
  validates_inclusion_of :longitude, :in => 0..180, :message => 'not valid'

  validates_presence_of :name, :lat, :lon
  validates_length_of :name, :within => 0..50
end
