require_relative "author.rb"

class Post

  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @author = nil
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    @author == nil ? nil : @author.name
  end

  def self.post_count
    @@all.count
  end


end
