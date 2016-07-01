require('rspec')
require('word_count')

describe('String#word_count') do
  it "takes a word and a sentence and return the number of times that the word was used in the sentence" do
    expect('this'.word_count('this sentence uses this three times to do this')).to(eq(3))
  end
  it "takes a word and a sentence and return the number of times that the word was used in the sentence disregarding the capitalization" do
    expect('this'.word_count('ThIS sentence uses ThIS three times to do ThIS')).to(eq(3))
  end
end
