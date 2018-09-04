# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

# ==========================
      # ARGV Arguments
# ==========================
if ARGV[0] == '--add'
  p 'add'
  description = ARGV[1]
  status = ARGV[2]
  task = Task.create(description: description, status: status)
  task.save

elsif ARGV[0] == '--list'
  p 'list'
  list = Task.all
  puts "No.         Description                  Status"
  puts "===         ===========                  ======"
  list.each do |task|
  puts "#{task.id}           #{task.description}                    #{task.status}"
  end

elsif ARGV[0] == '--update'
  p 'update'
  # update method here.
  no = ARGV[1]
  description = ARGV[2]
  status = ARGV[3]
  task = Task.find_by(id: no)
  task.update(description: description, status: status)
elsif ARGV[0] == '--remove'
  p 'remove'
  # remove method here.
end
