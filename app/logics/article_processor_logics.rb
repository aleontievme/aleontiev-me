class ArticleProcessorLogics
  def self.process(path)
    definition = Definition.new(File.read(path))
    article = Article.find_or_create_by(permalink: definition.tags["id"])
    article.title     = definition.tags["title"]
    article.permalink = definition.tags["permalink"]
    article.content   = definition.content
    article.save
  end
end