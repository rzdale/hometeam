class User < ActiveRecord::Base
	has_many :rsvps
	has_many :reviews
	has_many :written_reviews, through: :reviews, source: :reviewer
	has_many :received_reviews, through: :reviews, source: :reviewee
	has_many :venues
	has_many :hosting_events, through: :venues, source: :events
	has_many :attending_events, through: :rsvps, source: :event
end
