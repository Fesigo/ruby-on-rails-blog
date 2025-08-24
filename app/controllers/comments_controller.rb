class CommentsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        @comments = @post.comments.reload
        format.html { render @post, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def comment_params
      params.expect(comment: [ :post_id, :content, :guest_name, :user_id ])
    end
end
