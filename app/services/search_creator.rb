class SearchCreator
  def self.create_search(search_term)
    matches = []
    Recipe.all.each do |recipe|
      recipe_tags = recipe.tag_list.map!{|tag| tag.downcase}
      if recipe.title.downcase.include?(search_term.downcase) || recipe_tags.include?(search_term.downcase)
        matches << recipe
      end
    end
    matches
  end
end
