require_relative "../rails_helper.rb"

describe 'Feature Test: User Signup', :type => :feature do

it "reaches the sign up page" do
  visit '/'
 click_link('Sign up')
 expect(current_path).to eq('/users/new')
end



  def user_signup
visit '/'
click_link('Sign up')
expect(current_path).to eq('/users/new')
fill_in("user[name]", :with => "Mario")
fill_in('user[username]', :with => "superm")
fill_in("user[email]", :with=> 'Mario@lg.com')
fill_in('user[password]', :with => "password")
fill_in('user[password_confirmation]', :with => "password")
click_button('Submit')
expect(page).to have_content("Mario")
expect(page).to have_content("Mario@lg.com")
expect(page).to have_content("superm")
end





def user_login
    @luigi = User.create(
      name: "Luigo",
      password: "password",
      username: "lui",
      email: 'lui@lg.com',
    )
    visit '/'
    click_link('Sign in')
    expect(current_path).to eq('/signin')
    click_button('login')
    expect(current_path).to eq('/users/1')
    expect(page).to have_content("Luigo")
    expect(page).to have_content("lui")
    expect(page).to have_content("lui@lg.com")
  end


  it 'has a link to log out from the users/show page' do
    user_signup
    expect(page).to have_content("Log Out")
  end

  it 'redirects to home page after logging out' do
    user_signup
    click_link("Log Out")
    expect(root_url).to eq(root_url)
  end


  it "successfully destroys session hash when 'Log Out' is clicked" do
    user_login
    click_link("Log Out")
    expect(current_path).to eq(root_url)
  end

end
