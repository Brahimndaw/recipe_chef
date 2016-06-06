module LoginHelper

def user_signup
visit '/'
expect(current_path).to eq('/users/new')
fill_in("user[name]", :with => "Mario")
fill_in("user[email]", :with=> 'Mario@lg.com')
fill_in('user[username]', with => "superm")
click_button('Create User')
expect(current_path).to eq('/users/1')
expect(page).to have_content("Mario")
expect(page).to have_content("Mario@lg.com")
expect(page).to have_content("superm")
expect(page).to have_content("password")
end



def user_login
    @mindy = User.create(
      name: "Luigo",
      password: "password",
      username: "lui",
      email: 'lui@lg.com',
    )
    visit '/'
    click_link('Log in')
    expect(current_path).to eq('/signin')
    select "Luigo", :from => "user[id]"
    click_button('Log In')
    expect(current_path).to eq('/users/1')
    expect(page).to have_content("Luigo")
    expect(page).to have_content("lui")
    expect(page).to have_content("lui@lg.com")
  end

end