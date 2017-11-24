require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup submission' do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, params: { user: {
        username: '',
        email: 'user@invalid',
        password: 'foo',
        password_confirmation: 'bar'
      } }
    end
    assert_template 'devise/registrations/new'
	end

	test 'valid signup submission' do
		get new_user_registration_path
    assert_difference 'User.count', 1 do
      post user_registration_path, params: { user: {
        username: 'Ciaone',
        email: 'ciaone@example.com',
        password: 'ciaone87',
        password_confirmation: 'ciaone87'
      } }
		end
	end
end