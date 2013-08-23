require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :url => "Url",
        :title => "Title",
        :client => "Client",
        :summary => "Summary",
        :published => "Published",
        :showcase => "Showcase"
      ),
      stub_model(Project,
        :url => "Url",
        :title => "Title",
        :client => "Client",
        :summary => "Summary",
        :published => "Published",
        :showcase => "Showcase"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "Published".to_s, :count => 2
    assert_select "tr>td", :text => "Showcase".to_s, :count => 2
  end
end
