require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
	should belong_to(:user)
	should belong_to(:friend)

	test "taht creating a friendship works without raising an exception" do
		assert_nothing_raised do
			UserFriendship.create user: users(:jason), friend: users(:mike)
		end
	end
end
