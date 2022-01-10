class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :status

  has_many :line_items
  validates :status_id,   :presence => true
  
  validates :order_total, :presence => true,
                          :numericality => { :greater_than_or_equal_to => 0 }

  validates :gst_rate,    :allow_nil => true,
                          :numericality => { :greater_than_or_equal_to => 0 }
  
  validates :hst_rate,    :allow_nil => true,
                          :numericality => { :greater_than_or_equal_to => 0 }
 
  validates :pst_rate,    :allow_nil => true,
                          :numericality => { :greater_than_or_equal_to => 0 }               

end
