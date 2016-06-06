class SearchCreator
  def self.create_search(params)
    Recipe.joins(:taggings, :tags).where("lower(recipes.title) LIKE ? OR lower(tags.name) LIKE ?", "%#{params[:q].downcase}%", "%#{params[:q].downcase}%").distinct
  end
end
