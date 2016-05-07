module SessionHelpers
	def sign_up(name: 'Omar', username: 'omajul', email: 'omar@example.com', password: 'azerty', password_confirmation: 'azerty')
		visit '/users/new'
		expect(page.status_code).to eq(200)
		fill_in :name, with: name
		fill_in :username, with: username
		fill_in :email, with: email
		fill_in :password, with: password
		fill_in :password_confirmation, with: password_confirmation
		click_button 'Register'
	end

	def sign_in(email: 'omar@example.com', password: 'azerty')
		visit '/sessions/new'
		fill_in :email, with: email
		fill_in :password, with: password
		click_button 'Log in'
	end

	def post_peep
		sign_in
		fill_in :content, with: 'Test'
		click_button 'Post'
	end
end