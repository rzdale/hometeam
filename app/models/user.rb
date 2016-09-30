class User < ActiveRecord::Base
	has_many :rsvps
	has_many :reviews
	has_many :venues
end
