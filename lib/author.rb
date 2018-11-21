require "pry"

class Author
  attr_accessor :name

  @@posts = []

  def initialize(name)
    @name = name
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @@posts << post
    post.author = self
  end

  def self.post_count
    @@posts.size
  end

  def posts
    @@posts
  end

end
