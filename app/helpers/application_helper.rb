module ApplicationHelper
  # Returns the full title on a per page basis
  def full_title(page_title)
    base_title = 'Web24Studios'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def get_sidebar(type)
    if type == 'Company'
      links = [ link_to( :Overview, company_overview_path),
                link_to( "Our Business Philosophies", company_business_philosophies_path),
                link_to( "Why Us", company_why_us_path) ]
    elsif type == 'Services'
      links = [ link_to( "Web Application Development", services_web_application_development_path),
                link_to( "Website Design and Development", services_website_design_and_development_path),
                link_to( "Usability and User Interface", services_usability_and_user_interface_path),
                link_to( "Quality Assurance and Testing", services_quality_assurance_and_testing_path),
                link_to( "Maintenance and Support", services_maintenance_and_support_path) ]
    else
      return
    end

    html = "<aside class=\"side-bar side-navigation\"><h3>#{type}</h3><ul>"
    links.each do |link|
      html << "<li>#{link}</li>"
    end
    html << "</ul></aside>"
    return html
  end

  private
  # give the ability to find a sessioned user across the application
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]

    if @current_user.nil?
      false
    else
      @current_user.admin ||= 0   # just a safety precaution
      @current_user
    end
  end

  def current_user_is_admin
    if current_user
      @current_user.admin
    end
  end
end
