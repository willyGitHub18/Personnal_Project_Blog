class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :is_admin?, only: [:new, :create, :index, :edit, :update, :destroy]

    def index
      @posts = Post.all.order('created_at DESC')
    end

    def index_nz
      @posts = Post.all.order('created_at DESC')
    end

    def index_th
      @posts = Post.all.order('created_at DESC')
    end

    def index_la
      @posts = Post.all.order('created_at DESC')
    end

    def index_vi
      @posts = Post.all.order('created_at DESC')
    end

    def index_ca
      @posts = Post.all.order('created_at DESC')
    end

    def index_phi
      @posts = Post.all.order('created_at DESC')
    end

    def index_ja
      @posts = Post.all.order('created_at DESC')
    end

    def index_us
      @posts = Post.all.order('created_at DESC')
    end

    def index_pe
      @posts = Post.all.order('created_at DESC')
    end

    def index_bo
      @posts = Post.all.order('created_at DESC')
    end

    def index_arg
      @posts = Post.all.order('created_at DESC')
    end

    def index_chi
      @posts = Post.all.order('created_at DESC')
    end

    # The method is not really empty cause we will use the private method find_post 
    # If the request path is different from the post path indicated by the post :id param it will redirect to the latest slug
    def show
      if request.path != post_path(@post)
        redirect_to @post, status: :moved_permanently
      end
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
      params.require(:post).permit(:title, :content, :category_id, :date, :place, :image, :slug)
    end

    def find_post
      @post = Post.friendly.find(params[:id])
    end
end
