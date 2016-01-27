# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(name: 'Michelle', nickname: 'Michelle1', email: 'msisti@brandeis.edu', password: '12345678', admin: 'true')
    User.create(name: 'Nishan', nickname: 'Nishan1', email: 'acharyan@brandeis.edu', password: '12345678', admin: 'true') 
    User.create(name: 'Ken', nickname: 'Ken1',email: 'kharsch@brandeis.edu', password: '12345678', admin: 'true') 

    User.create(name: 'JoeC', nickname: 'JoeC1', email: 'jcarter@brandeis.edu', password: '12345678') 
    User.create(name: 'Kruk', nickname: 'Kruk1', email: 'jkruk@brandeis.edu', password: '12345678') 
    User.create(name: 'Vida', nickname: 'Vida1', email: 'vblue@brandeis.edu', password: '12345678') 
    User.create(name: 'Babe', nickname: 'Babe1', email: 'gruth@brandeis.edu', password: '12345678') 
    User.create(name: 'Grover', nickname: 'Grover1', email: 'mhargrove@brandeis.edu', password: '12345678') 
    User.create(name: 'Say Hey', nickname: 'Say Hey1', email: 'wmayes@brandeis.edu', password: '12345678') 
   
   Assignment.create(title: 'Assignment 1', description: 'Assignment 1 description', draft_deadline: '2016-01-30 05:00:00', final_deadline: '2016-01-31 05:00:00')
   Assignment.create(title: 'Assignment 2', description: 'Assignment 2 description', draft_deadline: '2016-02-15 05:00:00', final_deadline: '2016-02-17 05:00:00')

   Position.create(title: 'For', assignment_id: 1)
   Position.create(title: 'Against', assignment_id: 1)
   Position.create(title: 'Neutral', assignment_id: 1)
