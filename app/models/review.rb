class Review < ActiveRecord::Base
	belongs_to :user # reviewer
	belongs_to :user # reviewee
end
