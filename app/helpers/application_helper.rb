module ApplicationHelper
  def markdown(text)
    options = [ :hard_wrap, :no_intra_emphasis ]
    Markdown::new(text, *options).to_html.html_safe
  end
end
