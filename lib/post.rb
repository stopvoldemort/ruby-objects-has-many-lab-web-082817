require 'pry'

class Post

  attr_accessor :author
  attr_reader :title


  def initialize(title, author=nil)
    @title = title
    @author = author
    Author.post_count= Author.post_count + 1
  end

  def author_name
    if !self.author
      nil
    else
      self.author.author_name
    end
  end


end
