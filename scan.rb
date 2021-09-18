require 'socket'
ip = ARGV[0]
sleep 5 
ports = 1..65000

ports.each do |scan|
    begin
        Timeout::timeout(0.1){TCPSocket.new(ip, scan)}
        rescue
            puts "[PORT] #{scan} IS [CLOSED]" # this limits the annoying port scanning 
        else
            puts "[DATA]".colorize(:blue) + "[PORT #{scan}] OPEN".colorize(:red) + "On Server => " + N 
        end
    end