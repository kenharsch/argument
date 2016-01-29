class Position < ActiveRecord::Base
    belongs_to :assignment
    has_many :posts
    has_many :assigned_positions
    has_many :users, through: :assigned_positions
end
