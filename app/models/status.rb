class Status < ApplicationRecord
  has_many :orders

  validates :description, :presence => true
  validates :title,       :presence => true

  attr_accessor :description, :title
end
