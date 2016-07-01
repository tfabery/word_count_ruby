require('capybara/rspec')
require("./app")
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word_count path', {:type => :feature}) do
  it "processes users word nd sentence input and returns the number of time that the word was used in the sentence" do
    visit('/')
    fill_in('word', :with => 'This')
    fill_in('sentence', :with => 'this sentence uses this three times to do this')
    click_button('Count')
    expect(page).to have_content('3')
  end
end
