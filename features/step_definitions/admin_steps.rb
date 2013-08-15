Given /^I am an admin user$/ do
  @admin = User.create( email: 'cucumber.admin@gmail.com',
                        first_name: :Cucumber,
                        last_name: :Admin,
                        admin: 1,
                        password: 'admin' )
end
