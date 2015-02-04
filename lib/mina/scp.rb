def scp_transfer(direction, from, to, options = {})
  remote_prefix = "#{domain!}:"
  remote_prefix = "#{user}@#{remote_prefix}" if user?
  command = "scp"
  command << " -i #{identity_file}" if identity_file?
  command << " -P #{port}" if port?
  command << " -r" if options[:recursively]
  case direction
  when :up   then to   = remote_prefix + to
  when :down then from = remote_prefix + from
  end
  command << " #{from} #{to}"
  print_command command if options[:verbose]
  result = %x[#{command}]
  puts result unless result == ""
end

def scp_download(from, to, options = {})
  scp_transfer(:down, from, to, options)
end

def scp_upload(from, to, options = {})
  scp_transfer(:up, from, to, options)
end
