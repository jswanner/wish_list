class Event < ActiveRecord::Base
  has_many  :attendings
  has_many  :users,     :through => :attendings

  validates_presence_of :title

  attr_accessible :title, :description

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
