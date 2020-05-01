class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def articles
    Article.all.select do |a|
      a.author == self
    end
  end

  def magazines
    Magazine.all.uniq do |m|
      m.author == self
    end
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    topics = Magazine.all.map do |x|
      x.category
    end
    return topics.uniq
  end

end
