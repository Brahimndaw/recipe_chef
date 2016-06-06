describe 'Feature test: Go on a Ride', :type => feature do

before:each do 
  let(:recipe) {
    Recipe.create(
    :title => "Old Fashion Donut",
    :video_url => "oy",
    :description => "yo",
    :tag_list => "chicken"
    )
  }
end


end
