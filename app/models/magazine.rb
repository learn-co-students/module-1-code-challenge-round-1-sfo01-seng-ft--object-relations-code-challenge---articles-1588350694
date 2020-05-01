class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def self.all
    @@all
  end

  def contributors
    Article.all.select do |a|
      a.magazine == self
    end.map do |a|
      a.author
    end
  end

  def self.find_by_name(name)
    self.all.find do |m|
      m.name == name
    end
  end

  def article_titles
    Article.all.select do |a|
      a.magazine== self
    end.map do |a|
      a.title
    end
  end 

    def contributing_authors
      contributors.select do |a|
        contributors.count(a) > 2
      end.uniq
       
    end 

end


