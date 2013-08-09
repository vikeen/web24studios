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

  private
  # give the ability to find a sessioned user across the application
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
