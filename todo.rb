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
  Task.create(description: description, status: status)
  # add method here.
elsif ARGV[0] == '--list'
  p 'list'
  # list method here.
elsif ARGV[0] == '--update'
  p 'update'
  # update method here.
elsif ARGV[0] == '--remove'
  p 'remove'
  # remove method here.
end
