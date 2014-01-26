class ContentProcessorLogics
  def self.process(path)
    files = Dir.glob(path + "/*.article")
    files.each do |file|
      ext = File.extname(file)
      ArticleProcessorLogics.process(file) if ext == ".article"
    end

    true
  end
end