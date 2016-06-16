# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.destroy_all
Department.destroy_all
Month.destroy_all

# create the last 12 months
12.times do | n |
  start_day = (Date.today - (31 * n).days).beginning_of_month
  Month.create(start_day: start_day)
end

# create departments
5.times do
  FactoryGirl.create(:department)
end
70.times do
  rand_dept = Department.all.sample
  FactoryGirl.create(:employee, department: rand_dept)
end

e1 = Employee.first
e2 = Employee.second
e3 = Employee.third
e4 = Employee.fourth

m1 = Month.first
m2 = Month.second
m3 = Month.third

m1.coffee_dates.create(employees: [e1,e2])
m2.coffee_dates.create(employees: [e1,e3])
m3.coffee_dates.create(employees: [e1,e4])
