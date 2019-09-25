module ArticleHelpers
  module_function

  def title_of_article(article)
    article.title
  end

  def subtitle_of_article(article)
    article.metadata[:page][:subtitle]
  end

  def author_of_article(article)
    return default_author unless article.respond_to?(:author, false)
    return default_author unless article.author.present?

    article.author
  end

  def date_of_article(article)
    Date.parse(article.date.to_s).strftime('%B %-d, %Y')
  end
end