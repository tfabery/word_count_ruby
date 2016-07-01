require('rspec')
require('word_count')

describe('String#word_count') do
  it "takes a word and a sentence and return the number of times that the word was used in the sentence" do
    expect('this'.word_count('this sentence uses this three times to do this')).to(eq(3))
  end
end
