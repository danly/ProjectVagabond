class User < ActiveRecord::Base
	validates_uniqueness_of :email
  has_many :logs, dependent: :destroy
	has_secure_password

	def self.confirm(params)
		user = User.find_by({email: params[:email]})
		user.authenticate(params[:password])
	end

end
