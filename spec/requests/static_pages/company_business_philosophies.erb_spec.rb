require 'spec_helper'

describe 'Company Business Philosophies page' do
  it "should have the h1 'Our Business Philosophies'" do
    visit '/company/business-philosophies'
    page.should have_selector('h1', :text => 'Our Business Philosophies')
  end

  it "should have the title 'Our Business Philosophies'" do
    visit '/company/business-philosophies'
    page.should have_selector('title', text: 'Web24Studios | Our Business Philosophies')
  end
end
