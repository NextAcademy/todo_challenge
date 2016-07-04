# Checkpoint Test

This is an open-book **checkpoint** test focusing on building a
simple TODO ruby app using ActiveRecord with SQL database.

# Purpose
The test is to ensure that you are familiar with the basics of ActiveRecord,
and how it works with database (sqlite3 in this case) using Ruby.

# Assessment Time
10:00am - 2:30pm

# To start:
1) Fork this repo out by clicking the "**Fork**" button on the top right
side of the GitHub page.

```
$ cd ~/Desktop
```

2) Git clone your own forked repo.

```
$ git clone <your repo address>
```

3) Navigate into the repo.
```
$ cd <repo-name>
```

4) Begin your test

> Note:
>
> Remember to commit small and often. Some good references:
>
> `$ git add .`
>
> `$ git commit -m "Add task is done"`
>
> `$ git push origin master`
>
> Ask a mentor if you are stuck with git issues.

5) You should write your driver code inside "**todo.rb**" file.

6) Once done, perform your last `git push origin master` to your repo.

7) Call a mentor and Slack him/her your GitHub repo link.

8) The mentor will assess your performance.


# App Requirements:


Example:

## 1) User is able to add new task into the todo list

```ruby todo.rb --add <Description> <Status> ```

Example:

```
$ ruby todo.rb --add "buy groceries" "undone"
$ ruby todo.rb --add "fuel my car" "undone"

## 2) User is able to list all the tasks:

$ ruby todo.rb --list

No.   Description     Status
===   ===========     =====
1.    Buy Groceries   Undone
2.    Fuel My Car     Undone

```

## 3) User is able to update the task descriptions and status

```ruby todo.rb --update <No.> <Description> <Status>```

This will update the task description with the mentioned task number.
If the task is not found, a friendly error should be raised.

Example:

```
$ ruby todo.rb --list

No.   Description     Status
===   ===========     =====
1.    Buy Groceries   Undone
2.    Fuel My Car     Undone

$ ruby todo.rb --update 1 "Buy Groceries" "Done"

$ ruby todo.rb --list

No.   Description     Status
===   ===========     =====
1.    Buy Groceries   Done
2.    Fuel My Car     Undone

$ ruby todo.rb --update 4

Task number 4 is not found. Are you sure that this is the right task number?

```

## 4) User is able to remove any task from todo list

```ruby todo.rb --remove <No.>```

This will delete the task with the corresponding number from the list.
If the task is not found, a friendly error should be raised.

Example:

```
$ ruby todo.rb --list

No.   Description     Status
===   ===========     =====
1.    Buy Groceries   Done
2.    Fuel My Car     Undone

$ ruby todo.rb --remove 1

$ ruby todo.rb --list

No.   Description     Status
===   ===========     =====
1.    Fuel My Car     Undone

$ ruby todo.rb --remove 3

Task number 3 is not found. Are you sure that this is the right task number?

```


>**IMPORTANT NOTE**:
>
> Take note of the Task number. Upon deletion, it should be SELF-UPDATED
> in an ascending order.
>
> Hmm, but changing the task's id inside your database is never a good idea.
> How can you self-update the number without changing the task's id?

At the end of this assessment, you should be able to:

1) Understand how ARGV works

2) Apply ActiveRecord and Sqlite3 into ruby application

** WITHOUT using SQL statement (refer Rakefile)

    2.1) Able to create SQL database

    2.2) Able to perform schema migration

    2.3) Able to explore sqlite3 database

    2.4) Able to CREATE, READ, UPDATE, DELETE (CRUD) data into SQL database

3) Able to rename files correctly (capitalization, camel case etc)

# Good Luck!!!
