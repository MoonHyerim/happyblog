class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter
end

# model 만들 시에 post:references를 했기 때문에 belongs_to