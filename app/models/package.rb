class Package < ActiveRecord::Base
	has_many :subscriptions
end
