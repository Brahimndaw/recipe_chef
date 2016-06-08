class SearchCreator
  def self.create_search(term)
    search_term = term.downcase
    matches = []
    Recipe.all.each do |recipe|
      length = recipe.length.downcase unless !recipe.length
      recipe_tags = recipe.tag_list.map!{|tag| tag.downcase}
      if recipe.title.downcase.include?(search_term) || length == search_term || recipe_tags.include?(search_term)
        matches << recipe
      end
    end
    matches
  end
end
