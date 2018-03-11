class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bits, dependent: :destroy
  
  validates :user_name, presence: true
end
