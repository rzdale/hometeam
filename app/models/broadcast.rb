class Broadcast < ActiveRecord::Base
	has_many :tags
	belongs_to :event
end
