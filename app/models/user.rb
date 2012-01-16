class User < ActiveRecord::Base
  validates_numericality_of :latitude, :longitude
  validates_inclusion_of :latitude, :in => 0..90
  validates_inclusion_of :longitude, :in => 0..180

  validates_presence_of :name, :latitude, :longitude
  validates_length_of :name, :within => 0..50
  validates_uniqueness_of :name
  validates_uniqueness_of :latitude, :scope => :longitude
  validates_uniqueness_of :longitude, :scope => :latitude

  scope :nearest, order(:distance.asc)

  before_save :compute_distance

  private
  def compute_distance
    self.distance = ((self.latitude - self.longitude)**2)**(1/2)
  end
end
