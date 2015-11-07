module ApplicationHelper


  def link_to_current(name, options = {}, html_options = {}, &block)
      link_to(name, options, html_options.merge((current_page?(options))? {:id => 'current'}:{}), &block)
  end

  def current_user
    session[:current_user_id] && User.find_by_id(session[:current_user_id])
  end

end
