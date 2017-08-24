# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

command, *info = ARGV

def add(desc,status)
  Task.create!(desc:desc.capitalize, status:status.capitalize)
  puts "Added new task to to-do list!"
  puts "Description: #{desc.capitalize}"
  puts "Status: #{status.capitalize}" 
end

def list
  puts  "No.   Description            Status"
  puts  "===   ===========            ====="
  Task.all.each_with_index do |t,i|
  id = (i+1).to_s + '.'
  desc = t.desc
  status = t.status
  puts "#{id.ljust(5)} #{desc.capitalize.ljust(22)} #{status.capitalize}"
  end
end

def update(id,desc,status)
  db_id = Task.order(:id).offset(id.to_i-1).limit(1).first.id
  if Task.exists?(db_id)
    Task.find(db_id).update(desc:desc,status:status.capitalize)
    puts "Task successfully changed! New task:"
    puts "Description: #{desc.capitalize}"
    puts "Status: #{status.capitalize}"
  else
    raise "Task number #{id} is not found. Are you sure that this is the right task number?"
  end
end

def remove(id)
  db_id = Task.order(:id).offset(id.to_i-1).limit(1).first.id
  if Task.exists?(db_id)
    Task.find(db_id).destroy
    puts "Task successfully removed!"
  else
    raise "Task number #{id} is not found. Are you sure that this is the right task number?"
  end
end

case command
when "add" then add(info[0],info[1])
when "list" then list
when "update" then update(info[0],info[1],info[2])
when "remove" then remove(info[0])
else p "That is not a valid command"
end
