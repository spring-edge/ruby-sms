module Springedge
  require 'net/http'
  require 'launchy'
  Launchy::Browser.run(@uri)
  class SpringedgeSms
    def initialize(apikey,sender_name)
      @baseurl='https://instantalerts.co/api/web/send?apikey='+apikey+'&sender='+sender_name
    end
    def send(mobileno,message_body)
      @uri = URI.parse(@baseurl+'&to='+mobileno+'&message='+message_body+'&formt='+'json')
      http = Net::HTTP.new(@uri.host, @uri.port)
      http.use_ssl = true
      @data = http.get(@uri.request_uri)
    end
  end
end
