require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(username: "Example", email: "user@example.com", password: "letmein00")
	end

	test "should be valid" do
		assert @user.valid?
	end

	test "username should be present" do
		@user.username = "   "
		assert_not @user.valid?
	end

	test "username should not be too long" do
		@user.username = "a"*51
		assert_not @user.valid?
	end

	test "username should not be too short" do
		@user.username = "a"*4
		assert_not @user.valid?
	end

	test "email should be present" do
		@user.email = "   "
		assert_not @user.valid?
	end

	test "email should be valid" do
		emails = ["ciao@gmail.it", "ciaociao@gmail.it", "pastaefaseui@gmail.com"]
		emails.each do |email|
			@user.email = email
			assert @user.valid?
		end
	end

	test "email should be not valid" do
		emails = ["ciao@gmail", "ciaoatgmail.it", "&&£££@gmail.com"]
		emails.each do |email|
			@user.email = email
			assert_not @user.valid?
		end
	end

	test "email should not be too short" do
		@user.email = "a"+"@gmail.com"
		assert_not @user.valid?
	end

	test "email should not be too long" do
		@user.email = ("a"*246)+"@gmail.com"
		assert_not @user.valid?
	end

	test "password should be present" do
		@user.password = nil
		assert_not @user.valid?
	end

	test "password should be strong" do
		passwords = ["ciao3", "ciaociao", "1234567"]
		passwords.each do |password|
			@user.password = password
			assert_not @user.valid?
		end	
	end

end
