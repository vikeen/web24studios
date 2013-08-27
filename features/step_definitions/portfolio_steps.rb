When /^I am on the portfolio page$/ do
  visit projects_path
end

When /^I delete a portfolio project titled "([^"]*)"$/ do |title|
  step %{I am on the portfolio page}
  step %{I click "#{@project.title}" link}
  step %{I click "Delete Project" button}
  step %{I confirm popup}
  step %{I should see "#{@project.title} was successfully deleted."}
end

When /^I create a portfolio project with the following attributes:$/ do |table|
  table.hashes.each do |attributes|
    @project = Project.new(attributes)

    step %{I am on the portfolio page}
    step %{I click "Add New Project" button}
    step %{I should see "Add New Project"}
    step %{I fill in "project_www" with "#{@project.www}"}
    step %{I fill in "project_title" with "#{@project.title}"}
    step %{I fill in "project_client" with "#{@project.client}"}
    step %{I fill in "project_summary" with "#{@project.summary}"}
    step %{I select "#{@project.published}" from "project_published"}
    step %{I select "#{@project.showcase}" from "project_showcase"}
    step %{I click "Submit" button}
    step %{I should see "Project was successfully created!"}
  end
end

When /^I edit the portfolio project with the following attributes:$/ do |table|
  table.hashes.each do |attributes|
    step %{I am on the portfolio page}
    step %{I click "#{@project.title}" link}
    step %{I click "Edit Project" button}
    step %{I fill in "project_www" with "#{attributes['www']}"}
    step %{I fill in "project_title" with "#{attributes['title']}"}
    step %{I fill in "project_client" with "#{attributes['client']}"}
    step %{I fill in "project_summary" with "#{attributes['summary']}"}
    step %{I select "#{attributes['published']}" from "project_published"}
    step %{I select "#{attributes['showcase']}" from "project_showcase"}
    step %{I click "Submit" button}
    step %{I should see "Project was successfully updated!"}
    @project = Project.new(attributes)
  end
end

When /^I unpublish a portfolio project titled "([^"])*"$/ do |title|
  @project = Project.find_by_title(title)
  @project.update_attributes( published: :N )
end

Then /^a public user cannot view this portfolio project$/ do
  step %{I log out}
  step %{I am on the portfolio page}
  step %{I should not see "#{@project.title}"}
  visit @project                               # this should redirect to the portfolio page via controller
  step %{show me the page}
  step %{I should see "Portfolio"}
end

Then /^I should have a new portfolio project$/ do
  step %{a portfolio project titled "#{@project.title}" exists}
  step %{I am on the portfolio page}
  step %{I should see "#{@project.title}"}
  page.should have_button(:www)
  page.should have_button(:summary)
  step %{I click "summary" button}
  step %{I should see "#{@project.title}"}
  step %{I should see "#{@project.client}"}
  step %{I should see "#{@project.summary}"}
  page.should have_link(:www, :href => @project.www)
end

Then /^a portfolio project titled "([^"]*)" exists$/ do |title|
  Project.find_by_title(title)
end

Then /^a portfolio project titled "([^"]*)" should not exist$/ do |title|
  !Project.find_by_title(title)
end
