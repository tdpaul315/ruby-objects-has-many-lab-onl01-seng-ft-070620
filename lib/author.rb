class Artist

  attr_accessor :name, :post

  @@post_count = 0

  def initialize(name)
    @name = name
    @post = []
  end
  
  def post
    Post.all.select {|post| post.artist == self}
  end
end 