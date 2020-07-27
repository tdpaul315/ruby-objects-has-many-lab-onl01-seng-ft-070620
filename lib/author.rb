class Artist

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.artist == self}
  end
  
  def add_post(post)
    @posts << post
    post.artist = self
    @@posts += 1
  end

  def add_post_by_title(title)
    @@posts += 1
    p = Post.new(title)
    self.add_post(p)
    p
  end
  
  def self.post_count
    @@post_count 
  end 
end
   