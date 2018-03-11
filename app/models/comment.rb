class Comment < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :blog, required: true
  
  validates :content, presence: true
end
