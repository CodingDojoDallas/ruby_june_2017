class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params.merge(user: current_user, event: Event.find(params[:event_id])))

    unless comment.valid?
      flash[:msgs] = comment.errors.full_messages
    end

    redirect_to "/events/#{params[:event_id]}"
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
