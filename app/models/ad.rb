class Ad < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
  has_many :recommends
end
