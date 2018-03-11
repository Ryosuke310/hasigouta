class Blog < ActiveRecord::Base
  belongs_to :artist, required: true
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
