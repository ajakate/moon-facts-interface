require 'twilio-ruby'
require 'pry'

account_sid = 'AC05fdedb3d354ef8cec463b9ff2037382'
auth_token = '8b76f17e540cfa47ffd2fdb769278fd3'

#current phone number text string
number = @client.account.incoming_phone_numbers.list[0].phone_number

@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.messages.create(
  from: '+12242315500',
  to: '+16309879086',
  body: 'Hey there!'
)

puts message.to

binding.pry
