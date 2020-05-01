require "pry"
class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |a|
      a.author == self
    end
  end

  def magazines
    articles.map do |a|
      a.magazine 
    end.uniq
    
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    articles.map do |a|
      a.magazine 
    end.map do |a|
      a.category
    end.uniq
  end 


end



