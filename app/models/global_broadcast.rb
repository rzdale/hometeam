class GlobalBroadcast < ActiveRecord::Base
	has_many :taggings
	has_many :tags, through: :taggings
	belongs_to :event
end
