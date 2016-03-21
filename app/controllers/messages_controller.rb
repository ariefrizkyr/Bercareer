class MessagesController < ApplicationController
  before_action :authenticate_member!

  def new
    @chosen_recipient = Student.find_by(id: params[:to].to_i) if params[:to] || Company.find_by(id: params[:to].to_i) if params[:to]
  end

  def create
    recipients = Student.where(id: params['recipients']) || Company.where(id: params['recipients'])
    conversation = current_member.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
end
