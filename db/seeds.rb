require_relative '../config/application'
require_relative '../app/models/task'

Task.create!(desc: "Walk the dog", status:"Undone")
Task.create!(desc: "Code the todo list", status:"Undone")
Task.create!(desc: "Make water kefir", status:"Done")
