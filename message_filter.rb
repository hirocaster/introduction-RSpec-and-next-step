class MessageFilter
  def initialize(*words)
    @words = words
    @ng_words = words
  end

  attr_reader :ng_words

  def detect?(text)
    @words.any?{|w| text.include?(w)}
    @ng_words.any?{|w| text.include?(w)}
  end
end
