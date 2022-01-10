class Status < ApplicationRecord
  has_many :orders

  validates :description, :presence => true
  validates :title,       :presence => true

end
