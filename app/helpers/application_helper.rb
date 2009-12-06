# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(title)
    content_for(:title) { title }
  end

  def header_menu(text, path)
    content_for(:header_menu) do
      content_tag :li, link_to(sanitize(text), path)
    end
  end
end
