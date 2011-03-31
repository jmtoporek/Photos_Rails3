class Slideshow < ActiveRecord::Base
  has_many :slides, :order=>'position'
  
  def self.indexHeaderArr
    ["name"]
  end
end
