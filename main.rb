require 'socket'
require 'net/http'
require 'colorize'
require 'tty-spinner'
require 'optparse'
require 'httparty'
require 'timeout'
require 'uri'


system("clear")
sleep 1 

url     = ARGV[0] || "".empty?
domain  = ARGV[1] || "".empty?

N = `host #{domain}`.match(/(\d{1,3}\.){3}\d{1,3}/).to_s

URI.parse("#{url}").port # => 80
uri = URI.parse("#{url}")



if ARGV[1].nil?
    puts <<-'EOF'.colorize(:blue)
    ______ _     _ ______  _______     _______ _______ _______  ______
    |_____/ |     | |_____] |______ ___ |______    |    |______ |_____/
    |    \_ |_____| |_____] |______     ______|    |    |______ |    \_ 
    V 2.0                https://github.com/ArkAngeL43    Rube-Ster
                    Designed, and programmed by Scare_Sec hackers
    -------------------------------------------------------------------
    EOF
    puts '[-] No Argument'.colorize(:red)
    sleep 1 
    puts "[-] Try #{__FILE__} https://github.com www.github.com".colorize(:yellow)
    puts "[-] I Need a second link for the WWW in order to ping the IP Server ".colorize(:yellow)
    puts "[+] Try ".colorize(:yellow)
    puts "[+] ruby #{__FILE__} https://google.com www.google.com".colorize(:yellow)
    sleep 3 
    puts '[-] Exiting'.colorize(:red)
    exit!
    


end
if ARGV.empty?
    puts <<-'EOF'.colorize(:blue)
    ______ _     _ ______  _______     _______ _______ _______  ______
    |_____/ |     | |_____] |______ ___ |______    |    |______ |_____/
    |    \_ |_____| |_____] |______     ______|    |    |______ |    \_ 
    V 2.0                https://github.com/ArkAngeL43    Rube-Ster
                    Designed, and programmed by Scare_Sec hackers
    -------------------------------------------------------------------
    EOF
    puts '[-] No Argument'.colorize(:red)
    sleep 1 
    puts "[-] Try #{__FILE__} https://github.com www.github.com".colorize(:blue)
    puts '[-] Exiting'.colorize(:red)
    exit!
end

def banner_help()
    puts <<-'EOF'.colorize(:red)
    ______ _     _ ______  _______     _______ _______ _______  ______
    |_____/ |     | |_____] |______ ___ |______    |    |______ |_____/
    |    \_ |_____| |_____] |______     ______|    |    |______ |    \_ 
    V 2.0                https://github.com/ArkAngeL43    Rube-Ster
                    Designed, and programmed by Scare_Sec hackers
    -------------------------------------------------------------------
    EOF
end

banner_help()

date = Time.new 
puts  '         Date At Start ===> '.colorize(:yellow) + date.inspect .colorize(:red)
puts  '         Url Target    ===> '.colorize(:yellow) + url    .colorize(:red)
puts  '         WWW Target    ===> '.colorize(:yellow) + domain .colorize(:red)
puts '-------------------------------------------------------'
puts "[*] Target is => ".colorize(:blue) + url.colorize(:red)
puts '-------------------------------------------------------'  
sleep 1 
puts '[*] Gathering Info on URL => '.colorize(:blue) + url.colorize(:red)
sleep 3 
resur = Net::HTTP.get_response(URI.parse(url.to_s))




if resur.code == '200'
    puts '[+] Connection OK' 
elsif resur.code == '301'
    puts '[+] good'
elsif resur.code == '302'
    puts '[+] Domain not found'
elsif resur.code == '202'
    puts '[+] Domain Accepted IPA'
elsif resur.code == '201'
    puts '[+] Domain Created'
elsif resur.code == '204'
    puts '[-] hmmm not much content here'
elsif resur.code == '206'
    puts '[-] little content, but why?.....'
elsif resur.code == '303'
    puts '[-] See another page'
elsif resur.code == '304'
    puts '[-] Domain Isnt modified yet'
elsif resur.code == '305'
    puts '[-] try using proxies'
elsif resur.code == '308'
    puts '[-] perma redirect'
elsif resur.code == '400'
    puts '[-] Bad Request'
elsif resur.code == '403'
    puts '[-] your ip is not wanted here'
elsif resur.code == '405'
    puts '[-] unwanted domain'
elsif resur.code == '404'
    puts '[-] Domain Not Foud'
elsif resur.code == '423'
    puts '[-] locked domain'
elsif resur.code == '425'
    puts '[-] too eraly'
elsif resur.code == '429'
    puts '[-] way to much requests'
elsif resur.code == '413'
    puts '[-] Payload to large'
elsif resur.code == '407'
    puts '[-] hmmmm proxy auth is needed'
elsif resur.code == '410'
    puts '[-] Domain Gone '
elsif resur.code == '500'
    puts '[-] Server Side Error'
elsif resur.code == '503'
    puts '[-] Server Unavalible/Offline'
else
    puts '[-] Server May be offline '
    puts '[+] Trying a new request '
    sleep 1 
    resur = Net:HTTP.get_response(URI.parse(url.to))
    if resur.code == '200'
        puts '[+] Connection OK'.colorize(:blue)
    elsif resur.code == '301'
        puts '[+] good'
    elsif resur.code == '302'
        puts '[+] Domain not found'
    elsif resur.code == '202'
        puts '[+] Domain Accepted IPA'
    elsif resur.code == '201'
        puts '[+] Domain Created'
    elsif resur.code == '204'
        puts '[-] hmmm not much content here'
    elsif resur.code == '206'
        puts '[-] little content, but why?.....'
    elsif resur.code == '303'
        puts '[-] See another page'
    elsif resur.code == '304'
        puts '[-] Domain Isnt modified yet'
    elsif resur.code == '305'
        puts '[-] try using proxies'
    elsif resur.code == '308'
        puts '[-] perma redirect'
    elsif resur.code == '400'
        puts '[-] Bad Request'
    elsif resur.code == '403'
        puts '[-] your ip is not wanted here'
    elsif resur.code == '405'
        puts '[-] unwanted domain'
    elsif resur.code == '404'
        puts '[-] Domain Not Foud'
    elsif resur.code == '423'
        puts '[-] locked domain'
    elsif resur.code == '425'
        puts '[-] too eraly'
    elsif resur.code == '429'
        puts '[-] way to much requests'
    elsif resur.code == '413'
        puts '[-] Payload to large'
    elsif resur.code == '407'
        puts '[-] hmmmm proxy auth is needed'
    elsif resur.code == '410'
        puts '[-] Domain Gone '
    elsif resur.code == '500'
        puts '[-] Server Side Error'
    elsif resur.code == '503'
        puts '[-] Server Unavalible/Offline'
    else
        puts '[-] Second Test Failed '
    end
end

puts '---------------- BASIC INFORMATION FOR URL -------------- '
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
puts '-------------------------'
puts '[*] Response ~> '.colorize(:blue) + resur.code.colorize(:red)
sleep 0.1
puts '[*] Checking More Connections..'.colorize(:yellow)
puts '--------------------------'
puts '[*] Gathering Header Info....'.colorize(:yellow)
puts "[!] Warning, upon further testing of #{__FILE__}
[!] Sometimes the server info will go empty
[!] Right now i am planning on fixing this bug 
[!] and massive issue, however this project
[!] was programmed over the course of a month
".colorize(:yellow)
a = HTTParty.get(url).headers

ip = IPAddr.new(N)


MAP = ip.ipv4_compat.to_string

puts '[*] Query          => '.colorize(:blue) , uri.query  
puts '[*] Scheme         => '.colorize(:blue) , uri.scheme
puts '[*] Port  Main     => '.colorize(:blue) , uri.port
puts '[*] HOSTNAME       => '.colorize(:blue) , uri.host
puts '[*] Path           => '.colorize(:blue) , uri.path
puts '[*] Request URI    => '.colorize(:blue) , uri.request_uri 
puts '[*] Server         => '.colorize(:blue) +  a['server'].colorize(:red)
puts '[*] Date           => '.colorize(:blue) +  a['date'].colorize(:red)
puts '[*] Content        => '.colorize(:blue) +  a['content-type'].colorize(:red)
puts '[*] Response Code  => '.colorize(:blue) + resur.code
puts '[*] Last-mod       => '.colorize(:blue) 
puts a['last-modified']
puts '[*] trans-enc      => '.colorize(:blue) 
puts a['transfer-encoding']
puts '[*] Connection     => '.colorize(:blue) + a['connection'].colorize(:red)
puts '[*] Access-control => '.colorize(:blue) 
puts a['access-control-allow-origin']
puts '[*] Cache-control  => '.colorize(:blue) 
puts resur.response['Cache-Control']
puts '-----------------------SERVER INF--------------------'  
puts '[*] Calculated IPV6 | '.colorize(:blue) + MAP .colorize(:red)                   
puts '[*] Server IP       | '.colorize(:blue) + N .colorize(:red)
puts '[*] X-Frame-OP      | '.colorize(:blue) 
puts resur.response['x-frame-options']
puts '[*] X-XSS-Protect   | '.colorize(:blue) 
puts  resur.response['x-xss-protection']
puts '[*] X-Content-type  | '.colorize(:blue)
puts resur.response['x-content-type-options']
puts '[*] Max-Age         |'.colorize(:blue) 
puts resur.response['max-age']
puts '[*] X-Request-ID    |'.colorize(:blue)
puts resur.response['x-request-id']
puts '[*] X-Runtime       |'.colorize(:blue)
puts resur.response['x-runtime']
puts '[*] Access Control  |'.colorize(:blue)
puts resur.response['access_control_max_age']
puts '[*] Access Allow    |'.colorize(:blue)
puts resur.response['access_control_allow_methods']
puts '[*] Content Length  |'.colorize(:blue)
puts resur.response['content-length']
puts '[*] Connection      |'.colorize(:blue)
puts resur.response['connection']
puts '[*] Content_Dispo   |'.colorize(:blue)
puts resur.response['content_disposition']
puts '[*] Expires         |'.colorize(:blue)
puts resur.response['expires']
puts '[*] set-cookie      |'.colorize(:blue)
puts resur.response['set-cookie']
puts '[*] user-Agent      |'.colorize(:blue)
puts resur.response['user-agent']
puts '[*] bfcache-opt-in  |'.colorize(:blue)
puts resur.response['bfcache-opt-in']
puts '[*] Content encode  | '.colorize(:blue)
puts resur.response['content-encoding']
puts '[*] content-sec     | '.colorize(:blue)
puts resur.response['content-security-policy']
puts '[*] Session Cookie  |'.colorize(:blue)
puts resur.response['set-cookie']
puts '[*] strict-trans    |'.colorize(:blue)
puts resur.response['strict-transport-security']
puts '[*] method          |'.colorize(:blue)
puts resur.response['method']



puts '[*] Running Port Scan On Remote Server => '.colorize(:blue) + N.colorize(:red) 





system("ruby scan-2.rb #{N}")

#  :content_length => "303",
#:connection => "keep-alive",
#:content_disposition => "inline",
#:access_control_allow_origin => "*",


















#ARGV << '--h' if ARGV.empty?
# show if no argument vectors supplied 
#subcmdtext = <<HELP
# ______ _     _ ______  _______     _______ _______ _______  ______
#|_____/ |     | |_____] |______ ___ |______    |    |______ |_____/
#|    \_ |_____| |_____] |______     ______|    |    |______ |    \_ 
#V 2.0                https://github.com/ArkAngeL43    Rube-Ster
#                Designed, and programmed by Scare_Sec hackers
#-------------------------------------------------------------------
#Commands :
#    -u : target EX https://instagram.com
#    see '#{__FILE__} --help for more info'
#HELP

#opts = OptionParser.new do |opts|
#    opts.banner = "usage => #{__FILE__} [options]"
#    opts.on('-run', '--start', 'Run IT') do |v|
#        options[:target] = v 
#    end
#    opts.on('-h', 'help', 'Display This message.') do 
#        puts opts
#        exit!
#    end
#    opts.separator subcmdtext
#    opts.separator ""
#    opts.on_tail "Examples:"
#    opts.on_tail "#{__FILE__} -run https://github.com"
#    opts.on_tail "#{__FILE__} --start https://github.com"
#end