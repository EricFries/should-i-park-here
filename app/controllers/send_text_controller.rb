class SendTextController < ApplicationController
  skip_before_action :verify_authenticity_token
 
  def sms
    number_to_send_to = params[:number]
    address = params[:address]
    day_to_move = params[:day]
    minute_to_move = params[:full_date_time]["hour(5i)"]
    hour_to_move = params[:full_date_time]["hour(4i)"]
    am_pm = "am"

    if params[:full_date_time]["hour(4i)"].to_i > 12
      hour_to_move = params[:full_date_time]["hour(4i)"].to_i - 12 
      am_pm = "pm"
    end
  
    twilio_sid = Rails.application.secrets.twilio_sid
    twilio_token = Rails.application.secrets.twilio_token
    twilio_phone_number = Rails.application.secrets.twilio_number
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "Don't forget to move your car!  It's parked at #{address}. Move it by #{hour_to_move}:#{minute_to_move} #{am_pm} on #{day_to_move}."
    )
    respond_to do |f|
      f.html
      f.js
    end

  end
end