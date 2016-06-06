class TagDecorator < SimpleDelegator
  def self.sorted
    Tag.all.sort_by{|tag| tag.name}
  end
end
