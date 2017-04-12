Welcome to ninjaPoll!
===================


This is a poll app made with ruby on rails by the Ninja Team.

----------


Getting you started
-------------

This is a classic rails project. Therefor, you can start it by applying the migrations and running ```rails s```.
But if you want to have an admin and be able to edit polls role you need to create an admin user from the console :
```
$ rails console
$ u = User.new
$ u.name = "Your name"
$ u.email = "Whatever@youremail.is"
$ u.password = "A very complicated string"
$ u.password_confirmation = "A very complicated string"
$ u.admin = true
$ u.save
```

This above will create an admin and you will be able to log in with his credentials.
If you have trouble saving your newly created user, remember to checkout the error messages : ```$ u.errors.full_messages```
