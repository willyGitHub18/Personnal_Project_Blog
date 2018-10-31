module StaticPagesHelper
  def latest_posts
    @latest_posts = Post.last(3).reverse
  end
end
