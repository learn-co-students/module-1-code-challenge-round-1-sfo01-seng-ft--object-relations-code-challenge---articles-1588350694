class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    articles.map {|article| article.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map {|magazine| magazine.category}.uniq
  end

  # helper method
  # returns the number of articles that the author wrote for that magazie
  def article_count(magazine)
    article_count = []
      Article.all.each do |article|
        if article.author == self && article.magazine == magazine
          article_count << article
        end
      end
      article_count.count
  end

end
