# frozen_string_literal: true

require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
# DANGER! This is insecure. See http://twil.io/secure
account_sid = 'ACc5dc7bb56f3da1d4ec247304448e4864'
auth_token = 'fac0dc6c213e84945a8d3f23cb74618d'
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages.create(
    from: '+12065351801',
    body: 'شكرا لك! يمكنك التواصل مع الأستاذة أمل رسلان إن كان لديك أي أستفسار و رقمها هو +967-1-819-910',
    to: '+971 50 196 1113'
)

puts message.sid
