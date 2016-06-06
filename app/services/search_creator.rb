class SearchCreator
  def self.create_search(params)
    Recipe.where("lower(title) LIKE ?", "%#{params[:q].downcase}%")
  end
end
