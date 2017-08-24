# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
command, *info = ARGV

def add(desc,status)
  Task.create!(desc:desc, status:status)
  p "Added new task to todo list!"
end

def list

  puts  "No.   Description            Status"
  puts  "===   ===========            ====="
  Task.all.each_with_index do |t,i|
  id = (i+1).to_s + '.'
  desc = t.desc
  status = t.status
  puts "#{id.ljust(5)} #{desc.ljust(22)} #{status}"
  end
end

case command
when "add" then add(info[0],info[1])
when "list" then list
end
