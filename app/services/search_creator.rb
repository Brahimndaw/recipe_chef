class SearchCreator
  def self.create_search(params)
    search_term = params[:q]
    matches = []
    Recipe.all.each do |recipe|
      if recipe.title.downcase == search_term.downcase || recipe.tag_list.include?(search_term.downcase)
        matches << recipe
      end
    end
    matches
  end
end
