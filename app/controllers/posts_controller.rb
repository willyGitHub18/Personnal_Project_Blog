class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]

    def index_nz
      @posts = Post.all
    end

    def index_thailand
      @posts = Post.all
    end

    # The method is not really empty cause we will use the private method find_post
    def show
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to @post, notice: "Article créé!"
      else
        render 'new'
      end
    end

    # As for show it is not really empty
    def edit
    end

    def update
      if @post.update(post_params)
        redirect_to @post, notice: "Modification effectuée"
      else
        render 'edit'
      end
    end

    def destroy
      @post.destroy
      redirect_to root_path, notice: "Article supprimé"
    end

private

    def post_params
      params.require(:post).permit(:title, :content, :category_id)
    end

    def find_post
      @post = Post.find(params[:id])
    end
end
