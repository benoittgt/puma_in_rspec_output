require 'rails_helper'

RSpec.describe "IndexPage" do
  it "can be viewed" do
    visit root_url
    expect(page).to have_content("Hello World")
  end
end
