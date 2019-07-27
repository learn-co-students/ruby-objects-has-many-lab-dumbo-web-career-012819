class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author != nil
      return self.author.name
    else
      return self.author
    end
  end

end
