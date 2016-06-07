# describe SessionsController do
#   it "rejects incorrect passwords" do
#       @luigi = User.create(
#         name: "Luigi",
#         password: "password",
#         username: "lui",
#         email: 'lui@lg.com',
#       )
#       visit '/'
#       click_link('Sign in')
#       fill_in('username', :with => "lui")
#       fill_in('password', :with => "wrongpassword")
#       expect(current_path).to eq(signin_path)
#   end
# end
