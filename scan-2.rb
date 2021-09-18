require 'socket'
require 'timeout'

ip = ARGV[0]

# i didnt want args for this one but for future use 
#Q = ARGV[1]
puts "-----------------------------------------------"
puts "Scanning top 65,000 ports"
puts "This will take a while so sitback and enjoy it!"
puts "------------------------------------------------"
sleep 5 
ports = 1..65000

ports.each do |scan|
    begin
        Timeout::timeout(0.1){TCPSocket.new(ip, scan)}
        rescue
            puts "[PORT] #{scan} IS [CLOSED]"
        else
            puts "[*] [PORT #{scan}] IS OPEN [*]"
        end
    end
    sleep 1  
    puts "Done!"
