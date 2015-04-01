class SendTextController < ApplicationController
  def index
  end
 
  def sms
    number_to_send_to = params[:number]
 
    twilio_sid = Rails.application.secrets.twilio_sid
    twilio_token = Rails.application.secrets.twilio_token
    twilio_phone_number = "9175123465"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
    render layout: false
  end
end