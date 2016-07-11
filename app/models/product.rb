class Product < ActiveRecord::Base
  belongs_to :cart
  
  validates :name, presence: true, allow_blank: false
  validates :price, presence: true, allow_blank: false, numericality: { greater_than: 0,
                                                                        message: "must be grater then 0"}
  validates :description, presence: false, allow_blank: true 
end
