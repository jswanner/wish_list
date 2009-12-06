# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(title)
    content_for(:title) { title }
  end

  def header_menu(item)
    content_for(:header_menu) do
      content_tag :li, item
    end
  end
end
