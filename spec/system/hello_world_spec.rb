require "rails_helper"

RSpec.describe "Hello World", :type => :system do
  it "enables me to create widgets" do
    visit '/'
    expect( page ).to have_content 'Hello World'
  end
end
