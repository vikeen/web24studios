require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'services'" do
    it "returns http success" do
      get 'services'
      response.should be_success
    end
  end

  describe "GET 'services/web-application-development'" do
    it "returns http success" do
      get 'services_web_application_development'
      response.should be_success
    end
  end

  describe "GET 'services/website-design-and-development'" do
    it "returns http success" do
      get 'services_website_design_and_development'
      response.should be_success
    end
  end

  describe "GET 'services/usability-and-user-interface'" do
    it "returns http success" do
      get 'services_usability_and_user_interface'
      response.should be_success
    end
  end

  describe "GET 'services/quality-assurance-and-testing'" do
    it "returns http success" do
      get 'services_quality_assurance_and_testing'
      response.should be_success
    end
  end

  describe "GET 'services/maintenance-and-support'" do
    it "returns http success" do
      get 'services_maintenance_and_support'
      response.should be_success
    end
  end

  describe "GET 'company'" do
    it "returns http success" do
      get 'company_overview'
      response.should be_success
    end
  end
  describe "GET 'company/overview'" do
    it "returns http success" do
      get 'company_overview'
      response.should be_success
    end
  end

  describe "GET 'company/business-philosophies'" do
    it "returns http success" do
      get 'company_business_philosophies'
      response.should be_success
    end
  end

  describe "GET 'company/why-us'" do
    it "returns http success" do
      get 'company_why_us'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact_form'
      response.should be_success
    end
  end

  describe "GET 'contact/info'" do
    it "returns http success" do
      get 'contact_info'
      response.should be_success
    end
  end
end
