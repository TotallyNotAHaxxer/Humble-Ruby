require "net/http"
require "uri"

uri = URI.parse("#{url}")
http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Get.new(uri.request_uri)
request["User-Agent"] = "My Ruby Script"
request["Accept"] = "*/*"

response = http.request(request)
response["content-type"]

response.each_header do |key, value|
  p "#{key} => #{value}"
end
p response.instance_variable_get("@header")