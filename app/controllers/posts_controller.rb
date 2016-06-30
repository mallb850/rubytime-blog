class PostsController < ApplicationController

    def index
        @post = Post.all
    end 
    
    def show
        @post = Post.find(params[:id])
    end    
    
    def create
        @post = Post.new(post_params)
        @post.save
    end 
    
    def new
         @post = Post.new
    end
    
     def destroy
    #removes video from database
        @post = Post.find(params[:id])
        @post.destroy!
        redirect_to root_path, :notice => "Your post has been deleted forever! Sauce!"
     end
    
    private
    def post_params
         params.require(:post).permit(:title, :story, :body, :image)
    end
end
