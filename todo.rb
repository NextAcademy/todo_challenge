# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
command, *info = ARGV

def add(desc,status)
  Task.create!(desc:desc, status:status)
  p "Added new task to todo list!"
end

case command
when "add" then add(info[0],info[1])
end
