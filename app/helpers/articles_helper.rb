module ArticlesHelper
  def like_toggle(article)
    like = article.is_liked_by_user?(current_user.id)? "Dislike" : "Like"

    link_to like, like_article_path(article)
  end
end
