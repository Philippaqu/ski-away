class ConversationsController < ApplicationController

#  before_action do
#    @user = current_user
#    @self.user_id = @user.id
#  end
#
#  def create
#    if Conversation.between(params[:user_id], params[:appartment_id]).present?
#      @conversation = Conversation.between(params[:user_id], params[:appartment_id])
#    else
#      @conversation = Conversation.create!(conversation_params)
#    end
#  end
#
#  def conversation_params
#    params.require(:conversation).permit(:user_id, :appartment_id)
#  end
end
