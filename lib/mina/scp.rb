def scp_transfer(direction, from, to, options = {})
  # scp options inspired by Mina::Backend::Remote
  ensure!(:domain)
  remote_prefix = "#{fetch(:domain)}:"
  remote_prefix = "#{fetch(:user)}@#{remote_prefix}" if set?(:user)
  scp_cmd = "scp"
  scp_cmd << " -i #{fetch(:identity_file)}" if set?(:identity_file)
  scp_cmd << " -P #{fetch(:port)}" if set?(:port)
  scp_cmd << " -r" if options[:recursively]
  scp_cmd << " -o StrictHostKeyChecking=no"
  case direction
  when :up   then to   = remote_prefix + to
  when :down then from = remote_prefix + from
  end
  scp_cmd << " #{from} #{to}"
  run :local do
    command scp_cmd
  end
end

def scp_download(from, to, options = {})
  scp_transfer(:down, from, to, options)
end

def scp_upload(from, to, options = {})
  scp_transfer(:up, from, to, options)
end
