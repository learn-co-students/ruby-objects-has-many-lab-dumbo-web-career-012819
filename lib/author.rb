require 'pry'

class Author 
  
  attr_accessor :name, :posts
  
  @@all = []
  @@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
    
    @@all << self
  end
  
  def add_post(pst)
    pst.author = self
    @posts << pst
    @@posts << self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self 
    @posts << new_post
    @@posts << new_post
  end
  
  def self.all 
    @@all
  end
  
  def self.post_count
    @@posts.length
  end
  
end