class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :is_admin?, only: [:new, :create, :edit, :update, :destroy]

    def index_nz
      @posts = Post.all
    end

    def index_th
      @posts = Post.all
    end

    def index_la
      @posts = Post.all
    end

    def index_vi
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
        flash[:success] = "Article créé!"
        redirect_to @post
      else
        render 'new'
      end
    end

    # As for show it is not really empty
    def edit
    end

    def update
      if @post.update(post_params)
        flash[:success] = "Modification effectuée"
        redirect_to @post
      else
        render 'edit'
      end
    end

    def destroy
      @post.destroy
      flash[:success] = "Article supprimé"
      redirect_to root_path
    end

private

    def post_params
      params.require(:post).permit(:title, :content, :category_id)
    end

    def find_post
      @post = Post.find(params[:id])
    end
end
