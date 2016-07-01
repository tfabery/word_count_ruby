class String
  define_method(:word_count) do |sentence|
    word = self.downcase()
    words = sentence.downcase.split()
    result = 0
    words.each do |sentence_word|
      if sentence_word == word
        result += 1
      end
    end
    return result
  end
end
