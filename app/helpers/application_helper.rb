module ApplicationHelper
  def home_page?
    params[:controller] == 'arts' && params[:action] == 'home'
  end
end
