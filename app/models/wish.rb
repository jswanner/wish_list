class Wish < ActiveRecord::Base
  belongs_to  :user

  validates_presence_of :title

  attr_accessible :title, :description, :price  
end
