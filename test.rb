require 'httparty'
require 'net/http'
require 'nokogiri'
require 'http'
require 'typhoeus'
require 'webmock'

# http://www.webcode.me
uri = ARGV[0]
a = HTTParty.get(uri).headers

puts a['server']
puts a['date']
puts a['content-type']
puts a['last-modified']
puts a['transfer-encoding']
puts a['connection']
puts a['access-control-allow-origin']



#http = HTTP.accept(:json)
#response = http.get('https://icanhazdadjoke.com/')
#
#joke = response.parse
#
#puts joke["headers"]






#class Scraper

 #   attr_accessor :parse_page

#    def initialize
#        doc = HTTParty.get("http://store.nike.com/us/en_us/pw/mens-nikeid-lifestyle-shoes/1k9Z7puZoneZoi3")
#        @parse_page ||= Nokogiri::HTML(doc)
#    end

#    def get_names
#        item_container.css(".product-name").css("span.local").children.map { |name| price.text }.compact
#    end





























#response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

#puts response.body, response.code, response.message, response.headers.inspect

# Or wrap things up in your own class
#class StackExchange
#  include HTTParty
#  base_uri 'api.stackexchange.com'

#  def initialize(service, page)
#    @options = { query: { site: service, page: page } }
#  end

#  def questions
#    self.class.get("/2.2/questions", @options)
 # end

  #def users
  #  self.class.get("/2.2/users", @options)
  #end
#end

#stack_exchange = StackExchange.new("stackoverflow", 1)
#puts stack_exchange.questions
#puts stack_exchange.users

#uri = URI('http://www.webcode.me')
#res = Net::HTTP.get_response(uri)

# Headers
#puts res['Set-Cookie'] 
#puts res.header["HTTP_COOKIE"]


# example 
# http://www.webcode.me
#uri     = ARGV[0] || "".empty?
#
#http = Net::HTTP.new uri
#
#res = http.head '/'
#
#puts '=> ' + res['server']
#puts '=> ' + res['date']
#puts '=> ' + res['last-modified']
#puts '=> ' + res['content-type']
#puts '=> ' + res['content-length']
#puts '=> ' + res['cookie']