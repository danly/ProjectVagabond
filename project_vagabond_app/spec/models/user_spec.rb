require 'rails_helper'

RSpec.describe User, :type => :model do
<<<<<<< HEAD
	
	it "has a first name put into the field that does not contain spaces, numbers, or special characters" do
		user = User.create({:first_name => "Robert"})	
		expect(user.first_name).not_to be(nil)
		expect(user.first_name).not_to match /\d/ 
		expect(user.first_name).not_to match /\W/ 
	end
	it "has a last name put into the field that does not contain spaces, numbers, or special characters" do
		user = User.create({:last_name => "Gates"})	
		expect(user.last_name).not_to be(nil)
		expect(user.last_name).not_to match /\d/ 
		expect(user.last_name).not_to match /\W/ 
	end

	it "has an email address put into the field" do
		user = User.create({:email => "george.gates@gmail.com"})	
		expect(user.email).not_to be(nil)
		expect(user.email).to match /@/ 
	end

=======
  pending "add some examples to (or delete) #{__FILE__}"
>>>>>>> 138d08da8050d06a33bcda18a9d5910028a6930d
end
