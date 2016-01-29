class User < ActiveRecord::Base
  has_many :posts
  has_many :notes
  has_many :comments
  has_many :groups, through: :memberships
  has_many :assigned_positions
  has_many :positions, through: :assigned_positions
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable
         
end
