module UsersHelper
  def username_with_meta(user)
    sprintf(
      "%s %s",
      user.username,
      content_tag(
        :span,
        "( #{ pluralize user.wishes_count, 'wish' } )",
        :class => 'meta'
      )
    )
  end
end
