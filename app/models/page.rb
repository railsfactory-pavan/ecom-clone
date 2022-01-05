class Page < ApplicationRecord

  validates :content, :presence => true
  validates :title,   :presence => true

  attr_accessor :content, :title
end
