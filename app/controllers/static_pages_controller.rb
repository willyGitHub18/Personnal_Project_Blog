class StaticPagesController < ApplicationController
  def home
    @posts = Post.last(3).reverse
  end
end
