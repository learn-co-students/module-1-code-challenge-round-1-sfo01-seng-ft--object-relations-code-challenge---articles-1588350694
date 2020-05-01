class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def name
    @name
  end

  def category
    @category
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Magazine.all.find do |x|
      x.name == name
    end
  end

  def article_titles
    Article.all.map do |x|
      x.title
    end
  end

  def contributors
    arts = Article.all.map do |x|
      x.author
    end
  end
      



end
