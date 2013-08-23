require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :url => "Url",
      :title => "Title",
      :client => "Client",
      :summary => "Summary",
      :published => "Published",
      :showcase => "Showcase"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Title/)
    rendered.should match(/Client/)
    rendered.should match(/Summary/)
    rendered.should match(/Published/)
    rendered.should match(/Showcase/)
  end
end
