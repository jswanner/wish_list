class Wish < ActiveRecord::Base
  belongs_to  :user

  validates_presence_of :title

  attr_accessible :title, :description, :price  

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
