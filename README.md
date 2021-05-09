# Springedge::Sms

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/springedge/sms`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'springedge-sms'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install springedge-sms

## Usage

Send Text message:
Place this code in Rails Controller 
require 'Springedge';

apikey = "675031xxxxxxxxxxxx"
sender = "SEDEMO"

sms=SpringedgeSms.new(apikey,sender)
sms.send("9199xxxxxxxx", "Hello, This is a test message from spring edge");

Success Response:

{
 "groupID":xxxxxx,
 "MessageIDs":"xxxxxxx-xx",
 "status":"AWAITED-DLR"
}

## Use of method send
use sms.send method in you input fields where you want to give your message and phone number 
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/spring-edge.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

