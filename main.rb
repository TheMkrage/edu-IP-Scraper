
require "smarter_csv"
require "faraday"
require_relative "cmd"

$cmd = CMD.new

def college_from_csv
  SmarterCSV.process("sites.csv")
end

def colleges_with_ip
  colleges = college_from_csv
  for college in colleges
    p $cmd.host college[:url]
    college[:ip] = $cmd.host college[:url]
  end
  colleges
end


# main
colleges = colleges_with_ip
for college in colleges
  p $cmd.whois college[:ip]
end
