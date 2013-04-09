class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  #반드시 적어줘야 하는 부분은 :presence=>true로 적용시킨다.

  validates :name, :presence => true 
  validates :title, :presence => true, :length => { :minimum => 5 }

  has_many :comments
end
