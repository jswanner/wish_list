module WishesHelper
  def replace_urls(text)
    reg = /https?:\/\/\S+/i
    html_escape(text).gsub(reg) do |url|
      text = url.length > 50 ? "#{url[1..50]}..." : url
      content_tag(:a, text, :href => url)
    end
  end
end
