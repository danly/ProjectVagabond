class User < ActiveRecord::Base
	validates_uniqueness_of :email
  has_many :logs
	has_secure_password

	def self.confirm(params)
		user = User.find_by({email: params[:email]})
		user.authenticate(params[:password])
	end

end
