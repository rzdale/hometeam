class Venue < ActiveRecord::Base
	belongs_to :user
	has_many :events
	has_many :subscriptions
	has_many :packages, through: :subscriptions
end
