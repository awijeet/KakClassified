class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :ads
  
  attr_accessor :category_and_subcategory
  def category_and_subcategory
      self.category.name+self.name 
  end
end
