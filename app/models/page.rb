class Page < ApplicationRecord

  validates :content, :presence => true
  validates :title,   :presence => true

end
