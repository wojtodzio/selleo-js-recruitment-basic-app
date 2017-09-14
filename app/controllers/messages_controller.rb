class MessagesController < ApplicationController
  def index
    render json: Message.all
  end

  def create
    Message.create!(params.permit(:body))

    head :ok, content_type: 'application/json'
  end

  def destroy
    Message.find(params.require(:id)).destroy

    head :ok, content_type: 'application/json'
  end
end
