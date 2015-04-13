class Book < ActiveRecord::Base
  include SearchCop

  search_scope :search do 
    attributes :title, :rating, :price 
  end

  validates_presence_of :title
  validates_numericality_of :rating, :greater_than => 0, :less_than => 6
  validates_numericality_of :price, :greater_than => 0
  validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/
end
