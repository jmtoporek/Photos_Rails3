class Photo < ActiveRecord::Base
  belongs_to :category
  
  validates_presence_of :filename
  named_scope :with_filetype_jpg, :conditions => "filename like '%.jpg'"
  named_scope :with_thumbnail, :conditions => "thumbnail not null AND thumbnail != ''"
  
  def self.indexHeaderArr
    ["filename", "thumbnail", "description"]
  end
end
