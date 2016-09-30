class Tag < ActiveRecord::Base
	belongs_to :broadcast
	belongs_to :performer
end
