# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Dummay Departments

d1 = Department.create(name: "Computer Science & Engineering", nickname: "CSE")

d2 = Department.create(name: "Electronics & Communications", nickname: "EC")

d3 = Department.create(name: "Electrical Engineering", nickname: "EE")

d4 = Department.create(name: "Civil Engineering", nickname: "CE")

d5 = Department.create(name: "Machenical Engineering", nickname: "ME")

# Dummy Subjects

s1 = Subject.create(name: "Theory of Computation", nickname: "TOC")
s2 = Subject.create(name: "Compiler Design", nickname: "CD")
s3 = Subject.create(name: "Cloud Computing", nickname: "CC")
s4 = Subject.create(name: "Distributed System", nickname: "DS")
s5 = Subject.create(name: "Operating System", nickname: "OS")

# Dummy Employees
e1 = Employee.create(first_name: "Mark", last_name: "Anderson", date_of_joining: Date.today - 10.days, department_id: 1, email: "manderson@edu.com", mobile: "7875809099", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e2 = Employee.create(first_name: "Smith", last_name: "Anderson", date_of_joining: Date.today - 20.days, department_id: 1, email: "sanderson@edu.com", mobile: "7875809009", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e3 = Employee.create(first_name: "Sara", last_name: "Joy", date_of_joining: Date.today - 20.days, department_id: 2, email: "sjoy@edu.com", mobile: "7875809000", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e4 = Employee.create(first_name: "Brain", last_name: "Anderson", date_of_joining: Date.today - 29.days, department_id: 2, email: "banderson@edu.com", mobile: "7875000990", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e5 = Employee.create(first_name: "Sunil", last_name: "Pal", date_of_joining: Date.today - 30.days, department_id: 2, email: "spal@edu.com", mobile: "7875809091", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e6 = Employee.create(first_name: "Sunil", last_name: "Tiwari", date_of_joining: Date.today - 18.days, department_id: 2, email: "stiwari@edu.com", mobile: "7875809098", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e7 = Employee.create(first_name: "Ravi", last_name: "Kashyap", date_of_joining: Date.today - 10.days, department_id: 1, email: "rkashyap@edu.com", mobile: "7875809099", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e8 = Employee.create(first_name: "Jitendra", last_name: "Gora", date_of_joining: Date.today - 30.days, department_id: 1, email: "jkgora@edu.com", mobile: "7875809087", designation: "Assistant Professor", about: "He is an Assistant Professor.")


e9 = Employee.create(first_name: "Gopi", last_name: "Dutta", date_of_joining: Date.today - 30.days, department_id: 3, email: "gpdutta@edu.com", mobile: "7875809021", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e10 = Employee.create(first_name: "Lara", last_name: "Smith", date_of_joining: Date.today - 30.days, department_id: 3, email: "larasmith@edu.com", mobile: "7875809031", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e11 = Employee.create(first_name: "Jenipher", last_name: "Lorrence", date_of_joining: Date.today - 30.days, department_id: 3, email: "jlorrence@edu.com", mobile: "7875809041", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e12 = Employee.create(first_name: "Christina", last_name: "Martin", date_of_joining: Date.today - 20.days, department_id: 3, email: "christinam@edu.com", mobile: "7875809051", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e13 = Employee.create(first_name: "Dillo", last_name: "Dillen", date_of_joining: Date.today - 35.days, department_id: 4, email: "ddillon@edu.com", mobile: "7875809071", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e14 = Employee.create(first_name: "Sarita", last_name: "Bhardwaz", date_of_joining: Date.today - 35.days, department_id: 4, email: "sbhardvaz@edu.com", mobile: "7875809061", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e15 = Employee.create(first_name: "Raman", last_name: "Raja", date_of_joining: Date.today - 35.days, department_id: 4, email: "rajaraman@edu.com", mobile: "7875809081", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e16 = Employee.create(first_name: "Kusum", last_name: "Sharma", date_of_joining: Date.today - 35.days, department_id: 4, email: "sharmakusum@edu.com", mobile: "7875809091", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e17 = Employee.create(first_name: "Balram", last_name: "Dhaker", date_of_joining: Date.today - 90.days, department_id: 5, email: "bdhaker@edu.com", mobile: "7875809056", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e18 = Employee.create(first_name: "Dheerendra", last_name: "Kiloriya", date_of_joining: Date.today - 5.years, department_id: 5, email: "dkiloriya@edu.com", mobile: "7875809046", designation: "Assistant Professor", about: "He is an Assistant Professor.")

e19 = Employee.create(first_name: "Bhanupriya", last_name: "Jain", date_of_joining: Date.today - 2.years, department_id: 5, email: "jbhanupriya@edu.com", mobile: "7875809066", designation: "Assistant Professor", about: "She is an Assistant Professor.")

e20 = Employee.create(first_name: "Rijavana", last_name: "Mansoori", date_of_joining: Date.today - 3.years, department_id: 5, email: "rmansoori@edu.com", mobile: "7875809036", designation: "Assistant Professor", about: "She is an Assistant Professor.")

