class CMD
  def host domain
    `host #{domain}`.match(/(\d{1,3}\.){3}\d{1,3}/).to_s
  end

  def whois ip
    `whois #{ip}`.match(/https?:\/\/[\S]+entity[\S]+/)
  end
end
