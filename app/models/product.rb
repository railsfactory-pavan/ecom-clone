class Product < ApplicationRecord
  has_many :line_items
  has_many :reviews

  belongs_to :cotegory

  validates :name,           :presence => true
  validates :description,    :presence => true
  validates :price,          :presence => true,
                             :numericality => { :greater_than_or_equal_to => 0 }

  validates :sale_price,     :allow_nil => true,
                             :numericality => { :greater_than_or_equal_to => 0 }

  validates :stock_quantity, :presence => true,
                             :numericality => { :greater_than_or_equal_to => 0 }

  attr_accessor :description, :name, :price, :sale_price, :stock_quantity, :category_id, :image
end
