class CommentsController < ApplicationController
    before_action :authenticate, only: [:destroy]

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params.require(:comment).permit!)
        redirect_to post_path(@post)     
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end
    private
        def post_params
            params.require(:comments).permit(:commenter, :body)
        end
end
