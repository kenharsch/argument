class Group < ActiveRecord::Base
	has_many :memberships
	has_many :users, through: :memberships
	accepts_nested_attributes_for :memberships, allow_destroy: true
end
