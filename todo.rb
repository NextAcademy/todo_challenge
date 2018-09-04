# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'
require 'table_print'

# Your Code begins from this line onwards #

# ==========================
      # ARGV Arguments
# ==========================
if ARGV[0] == '--add'
  description = ARGV[1]
  status = ARGV[2]
  task = Task.create(description: description, status: status)
  task.save
  puts "Poof! A new task has been born!"

elsif ARGV[0] == '--list'
  tp Task.all

elsif ARGV[0] == '--update'
  no = ARGV[1]
  list = Task.all
  if no.to_i > list.count
    puts "INVALID ID"
  else
  description = ARGV[2]
  status = ARGV[3]
  task = Task.find_by(id: no)
  task.update(description: description, status: status)
  end

elsif ARGV[0] == '--remove'
  no = ARGV[1]
  list = Task.all
  if no.to_i > list.count
    puts "INVALID ID"
  else
    task = Task.find_by(id: no)
    task.delete
  end
end
