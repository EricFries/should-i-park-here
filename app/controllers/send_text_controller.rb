class SendTextController < ApplicationController
  skip_before_action :verify_authenticity_token
 
  def sms
    binding.pry
    number_to_send_to = params[:number]
    address = params[:address]
    time_to_move = params[:time]
 
    twilio_sid = Rails.application.secrets.twilio_sid
    twilio_token = Rails.application.secrets.twilio_token
    twilio_phone_number = "9175123465"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "Don't forget to move your car!  It's parked at #{address}. Move it by #{time_to_move}."
    )

    respond_to do |f|
      f.html
      f.js
    end

  end
end