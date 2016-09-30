class Event < ActiveRecord::Base
	has_many :rsvps
	has_many :broadcasts
	belongs_to :venue
end
