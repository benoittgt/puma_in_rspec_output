require 'rails_helper'

RSpec.describe "IndexPage" do
  it "can be viewed", js: true do
    visit root_url
  end
end
