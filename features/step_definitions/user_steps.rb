Given /^I am signed in as a user with the following attributes:$/ do |table|
  table.hashes.each do |attributes|
    @user = User.create!(attributes)
    step %{I am on the home page}
    step %{I click "Admin" link}
    step %{I should see "Log In"}
    step %{I fill in "email" with "#{@user.email}"}
    step %{I fill in "password" with "#{@user.password}"}
    step %{I click "Submit" button}
    step %{I should see "Successfully Logged In"}
    step %{I should see "#{@user.email} - Log Out"}
  end
end
