class User < ActiveRecord::Base

	include BCrypt

	has_many :rsvps
	has_many :reviews
	# has_many :written_reviews, through: :reviews, source: :reviewer
	# has_many :received_reviews, through: :reviews, source: :reviewee
	has_many :venues
	has_many :hosting_events, through: :venues, source: :events
	has_many :attending_events, through: :rsvps, source: :event

	def password
		@password ||= Password.new(password_hash)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end

	def self.authenticate(email, password)
		@user = User.find_by(email: email)

		if @user.password == password
			return @user
		else return nil end
	end

end
