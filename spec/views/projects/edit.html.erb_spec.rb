require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :url => "MyString",
      :title => "MyString",
      :client => "MyString",
      :summary => "MyString",
      :published => "MyString",
      :showcase => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_url[name=?]", "project[url]"
      assert_select "input#project_title[name=?]", "project[title]"
      assert_select "input#project_client[name=?]", "project[client]"
      assert_select "input#project_summary[name=?]", "project[summary]"
      assert_select "input#project_published[name=?]", "project[published]"
      assert_select "input#project_showcase[name=?]", "project[showcase]"
    end
  end
end
