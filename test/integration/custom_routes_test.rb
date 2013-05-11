require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login route opens the login page" do
		get '/login'
		assert_response :success
	end

	test "that /logout route opens the logout page" do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /regis route opens the regis page" do
		get '/register'
		assert_response :success
	end

	test "that a profile page works" do
		get '/timliu'
		assert_response :success
	end

  # test "the truth" do
  #   assert true
  # end
end
