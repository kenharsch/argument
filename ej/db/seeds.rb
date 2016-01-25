# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(name: 'Michelle', email: 'msisti@brandeis.edu', password: '12345678', admin: 'true')
    User.create(name: 'Nishan', email: 'acharyan@brandeis.edu', password: '12345678', admin: 'true') 
    User.create(name: 'Ken', email: 'kharsch@brandeis.edu', password: '12345678', admin: 'true') 

    User.create(name: 'JoeC', email: 'jcarter@brandeis.edu', password: '12345678') 
    User.create(name: 'Kruk', email: 'jkruk@brandeis.edu', password: '12345678') 
    User.create(name: 'Vida', email: 'vblue@brandeis.edu', password: '12345678') 
    User.create(name: 'Babe', email: 'gruth@brandeis.edu', password: '12345678') 
    User.create(name: 'Grover', email: 'mhargrove@brandeis.edu', password: '12345678') 
    User.create(name: 'Say Hey', email: 'wmayes@brandeis.edu', password: '12345678') 
   
   Assignment.create(title: 'Assignment 1', description: 'Assignment 1 description', draft_deadline: '2016-01-30 05:00:00', final_deadline: '2016-01-31 05:00:00')
   Assignment.create(title: 'Assignment 2', description: 'Assignment 2 description', draft_deadline: '2016-02-15 05:00:00', final_deadline: '2016-02-17 05:00:00')

   Position.create(title: 'For', assignment_id: 1)
   Position.create(title: 'Against', assignment_id: 1)
   Position.create(title: 'Neutral', assignment_id: 1)
