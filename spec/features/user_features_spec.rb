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
    expect(page).to have_content("superm")
    expect(page).to have_content("Recipes")
    expect(page).to have_content("Create a recipe")
  end

  it "can successfully sign a user up" do
    user_signup
  end

  it "rejects duplicate users" do
    user_signup
    click_link('Log Out')
    click_link('Sign up')
    expect(current_path).to eq('/users/new')
    fill_in("user[name]", :with => "Mario")
    fill_in('user[username]', :with => "superm")
    fill_in("user[email]", :with=> 'Mario@lg.com')
    fill_in('user[password]', :with => "password")
    fill_in('user[password_confirmation]', :with => "password")
    click_button('Submit')
    expect(current_path).to eq(new_user_path)
  end

  def user_login
    @mindy = User.create(
      name: "Luigo",
      password: "password",
      username: "lui",
      email: 'lui@lg.com',
    )
    visit '/'
    click_link('Sign in')
    expect(current_path).to eq('/signin')
    fill_in('username', :with => "lui")
    fill_in('password', :with => "password")
    click_button('login')
    expect(page).to have_content("Chefs")
    expect(page).to have_content("Recipes")
    expect(page).to have_content("Log Out")
  end

  it "allows a user to login" do
    user_login
  end

  it 'has a link to log out from the users/show page' do
    user_signup
    expect(page).to have_content("Log Out")
  end

  it 'links to the the recipe page' do
    user_signup
    expect(page).to have_content("Recipes")
  end

  it 'links to the the User show page' do
    user_signup
    expect(page).to have_content("Recipes")
  end
end
