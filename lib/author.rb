require_relative './song'
require 'pry'

class Author
  attr_reader :posts
  attr_accessor :post_count, :name

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def self.post_count=(post_count)
    @@post_count = post_count
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def author_name
    @name
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post)
    @posts << Post.new(post, self)
  end

end
