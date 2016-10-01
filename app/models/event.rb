class Event < ActiveRecord::Base
	has_many :rsvps
	has_many :broadcasts

	has_many :tags, through: :broadcasts
	has_many :performers, through: :tags



	belongs_to :venue
	has_one :user, through: :venue
end
