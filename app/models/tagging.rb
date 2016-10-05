class Tagging < ActiveRecord::Base
	belongs_to :broadcast
	belongs_to :tag
end
