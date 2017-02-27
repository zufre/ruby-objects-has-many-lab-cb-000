class Post
  attr_accessor :author, :title, :posts

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author != nil
      self.author.name
    else
      nil
    end
  end

  def title
    @title
  end

end
