class User < ActiveRecord::Base
  has_many  :wishes
  has_many  :attendings
  has_many  :events,    :through => :attendings

  validates_presence_of   :username #,  :email
  validates_uniqueness_of :username #,  :email

  attr_accessible :username, :email

  def to_param
    username
  end
end
